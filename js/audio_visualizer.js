console.log('audio_visualizer');
document.addEventListener("DOMContentLoaded", function () {
    function getPos(Hz, minHz, maxHz, max) {
        if (Hz > minHz) {
            var posMin = Math.log10(minHz) * max;
            return (Math.log10(Hz) - Math.log10(minHz)) * max / (Math.log10(maxHz) - Math.log10(minHz));
        } else {
            return 0;
        }
    }

    function getFFTbars(fft, barCount) {
        var minHz = arguments.length > 2 && arguments[2] !== undefined ? arguments[2] : 20;
        var maxHz = arguments.length > 3 && arguments[3] !== undefined ? arguments[3] : 12000;
        var dataArray = new Float32Array(bufferLength);
        fft.getFloatFrequencyData(dataArray);
        var pos;
        var out = [];

        for (i in dataArray) {
            pos = Math.round(getPos(i * 24000 / dataArray.length, minHz, maxHz, barCount));
            if (pos < barCount) if (!out[pos] || out[pos] < dataArray[i]) out[pos] = dataArray[i];
        }

        for (i = 0; i < barCount; i++) 
        {
            if (!out[i])
            {
                var prevIndex = void 0,
                    prevValue = void 0;

                if ((prevIndex = i - 1) < 0) 
                {
                    prevIndex = 0;
                    prevValue = 0;
                }
                else
                {
                    prevValue = out[prevIndex];
                }

                var nextIndex = void 0,
                    nextValue = void 0;

                for (var k = i; k < barCount; k++)
                {
                    if (out[k]) 
                    {
                        nextIndex = k;
                        nextValue = out[k];
                        break;
                    }
                }

                if (!nextIndex)
                {
                    nextIndex = barCount - 1;
                    nextValue = 0;
                }

                out[i] = prevValue + (nextValue - prevValue) / (nextIndex - prevIndex);
            }
        }

        return out;
    }

    function draw()
    {
        var bars = getFFTbars(analyser, 72);
        canvasCtx.clearRect(0, 0, canvas.width, canvas.height);
        canvasCtx.fillStyle = 'rgb(0, 0, 0)';
        canvasCtx.beginPath();

        for (i in bars) 
        {
            canvasCtx.rect(i * 10, canvas.height - (bars[i] + 64) * canvas.height / 64, 8, canvas.height);
        }

        canvasCtx.fill();
    }

    var canvas, canvasCtx, audioCtx, source, analyser, bufferLength, dataArray, gainNode;
    var initialized = false;
    audio.addEventListener('play', function () 
    {
        if (!initialized)
        {
            canvas = document.getElementById("canvas");
            canvasCtx = canvas.getContext("2d");
            audioCtx = new (window.AudioContext || window.webkitAudioContext)();
            source = audioCtx.createMediaElementSource(audio);
            analyser = audioCtx.createAnalyser();
            analyser.fftSize = 4096;
            bufferLength = analyser.frequencyBinCount;
            dataArray = new Float32Array(bufferLength);
            gainNode = audioCtx.createGain();
            source.connect(analyser);
            source.connect(gainNode);
            gainNode.connect(audioCtx.destination);
            setInterval(draw, 16);
            initialized = true;
        }
    });
});