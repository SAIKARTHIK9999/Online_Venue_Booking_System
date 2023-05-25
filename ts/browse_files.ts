const realFileBtn: any = document.getElementById('real-file' as any);
const customBtn: any = document.getElementById('custom-button' as any);
const customTxt: any = document.getElementById('custom-text' as any);

    customBtn.addEventListener('click', function(){
        realFileBtn.click();
    });

    realFileBtn.addEventListener('change', function(){
        if(realFileBtn.value)
        {
            customTxt.innerHTML = realFileBtn.value.match(/[\/\\]([\w\d\s\.\-\(\)]+)$/)[1];
        }
        else
        {
            customTxt.innerHTML = 'No file chosen, yet';
        }
    });
