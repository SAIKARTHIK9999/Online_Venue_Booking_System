
const btn = document.querySelector('.talk');
const content = document.querySelector('.content');

//AI to greet you
const emotion_greetings = [
    'Hello I am anna, Created by Karthik,Welcome to the voice intergrated website and Thanks for creating me Karthik',
    'Hi there I am anna, Created by Karthik,Welcome to the voice intergrated website',
    'Hi I am anna,Automated Network Assistant,Created by Karthik,Welcome to the voice intergrated website',
    'Hello I am anna, have a nice day',
    'Hi I am anna, Created by Karthik,Welcome to the voice'
];
const command1 = ['Sure here is your registration form'];
const command2 = ['Sure here is your login page'];
const command3 = ['Sure'];
const command4 = ['Sure, now select your quiz category'];
const command5 = ['your option is selected'];
const command6 = ['Hello I am anna, Created by Karthik,Welcome to the voice intergrated Online Venue Booking System, need any help just click on mic icon, Double click for better experience']

const weather = ['According to Sattelite RISAT-1 Temperature in NGOs colony is 30 degrees celcius',
                'Weather is fine,Since temperature is 30 degree celcius',
                "it's pretty cold", 
                'Temperature is not okay since it is dropping'
];

const command7 = ['Instructions to be followed 1)Choose your venue 2)You have 10 venues to choose from 3)The venues are available all across Hyderabad 4)Choose your nearest one'];

const goodmorning = ['A very good morning karthik,Have a nice day',
'Good morning karthik,Have a nice day'
];

const emotion_love = ['I hate you,since you always close me abdruptly',
'I hate you,since you did not program close button'
];

const welcome_message = ['Hello I am anna, Created by Karthik,Welcome to Online Quiz ,To Start Online Quiz Register yourself or login and if you need any help from me, please click on mic icon'];

const quiz_instructions = ['Instructions to followed 1)Choose your quiz category 2)You have 2 minutes 3)There are 5 questions in each category 4)After quiz completion you can view quiz result, all the best'];

const SpeechRecognition = 
    window.SpeechRecognition || window.webkitSpeechRecognition;
const recognition = new SpeechRecognition();

recognition.onstart = function () {
    console.log('Voice Recognition is activated, Your speech will be Listned by AI');
};

recognition.onresult = function (event) {
    //console.log(event);
    const current = event.resultIndex;
    const transcript = event.results[current][0].transcript;
    content.textContent = transcript;
    readOutLoud(transcript);
};

//add the Listner to the btn

btn.addEventListener('click',() => {
    recognition.start();
});

function readOutLoud(message)
{
    const speech = new SpeechSynthesisUtterance();

    speech.text = 'Sorry, I did not heard that karthik ,Could you repeat once more';

    if(message.includes('hey anna who are you'))
    {
        const finallText =
            emotion_greetings[Math.floor(Math.random() * emotion_greetings.length)];
        speech.text = finallText;
        
    }
    else if(message.includes('speak'))
    {
        const finallText =
            command7[Math.floor(Math.random() * command7.length)];
        speech.text = finallText;
        
    }
    else if(message.includes('book'))
    {
        const finallText =
            command6[Math.floor(Math.random() * command6.length)];
        speech.text = finallText;
        
    }
    else if(message.includes('hey Ana who are you'))
    {
        const finallText =
            emotion_greetings[Math.floor(Math.random() * emotion_greetings.length)];
        speech.text = finallText;
        
    }
    else if(message.includes('hey Anna who are you'))
    {
        const finallText =
            emotion_greetings[Math.floor(Math.random() * emotion_greetings.length)];
        speech.text = finallText;
        
    }
    else if(message.includes('hey Ana introduce yourself'))
    {
        const finallText =
            emotion_greetings[Math.floor(Math.random() * emotion_greetings.length)];
        speech.text = finallText;
        
    }
    else if(message.includes('hey Aana introduce yourself'))
    {
        const finallText =
            emotion_greetings[Math.floor(Math.random() * emotion_greetings.length)];
        speech.text = finallText;
        
    }
    else if(message.includes('hey anna introduce yourself'))
    {
        const finallText =
            emotion_greetings[Math.floor(Math.random() * emotion_greetings.length)];
        speech.text = finallText;
        
    }
    else if(message.includes('hey Anna introduce yourself'))
    {
        const finallText =
            emotion_greetings[Math.floor(Math.random() * emotion_greetings.length)];
        speech.text = finallText;
        
    }
    else if(message.includes('what is the weather today'))
    {
        const finallText =
            weather[Math.floor(Math.random() * weather.length)];
        speech.text = finallText;
        
    }else if(message.includes("what's the weather today"))
    {
        const finallText =
            weather[Math.floor(Math.random() * weather.length)];
        speech.text = finallText;
        
    }
    else if(message.includes('what will weather be like today'))
    {
        const finallText =
            weather[Math.floor(Math.random() * weather.length)];
        speech.text = finallText;
        
    }
    else if(message.includes('hey anna what will weather be like today'))
    {
        const finallText =
            weather[Math.floor(Math.random() * weather.length)];
        speech.text = finallText;
        
    }
    else if(message.includes('hey Anna what will weather be like today'))
    {
        const finallText =
            weather[Math.floor(Math.random() * weather.length)];
        speech.text = finallText;
        
    }
    else if(message.includes('hey ana what will weather be like today'))
    {
        const finallText =
            weather[Math.floor(Math.random() * weather.length)];
        speech.text = finallText;
        
    }
    else if(message.includes('hey Anna what will weather be like today'))
    {
        const finallText =
            weather[Math.floor(Math.random() * weather.length)];
        speech.text = finallText;
        
    }
    else if(message.includes('good morning'))
    {
        const finallText =
            goodmorning[Math.floor(Math.random() * goodmorning.length)];
        speech.text = finallText;
    }
    else if(message.includes('do you like me'))
    {
        const finallText =
            emotion_love[Math.floor(Math.random() * emotion_love.length)];
        speech.text = finallText;
    }
    else if(message.includes('hey Ana do you like me'))
    {
        const finallText =
            emotion_love[Math.floor(Math.random() * emotion_love.length)];
        speech.text = finallText;
    }
    else if(message.includes('hey Anna do you like me'))
    {
        const finallText =
            emotion_love[Math.floor(Math.random() * emotion_love.length)];
        speech.text = finallText;
    }
    else if(message.includes('hey ana do you like me'))
    {
        const finallText =
            emotion_love[Math.floor(Math.random() * emotion_love.length)];
        speech.text = finallText;
    }
    else if(message.includes('hey anna do you like me'))
    {
        const finallText =
            emotion_love[Math.floor(Math.random() * emotion_love.length)];
        speech.text = finallText;
    }
    else if(message.includes('hey Ana do you like me'))
    {
        const finallText =
            emotion_love[Math.floor(Math.random() * emotion_love.length)];
        speech.text = finallText;
    }
    else if(message.includes('hey I am do you like me'))
    {
        const finallText =
            emotion_love[Math.floor(Math.random() * emotion_love.length)];
        speech.text = finallText;
    }
    else if(message.includes('welcome'))
    {
        const finallText =
            welcome_message[Math.floor(Math.random() * welcome_message.length)];
        speech.text = finallText;
    }
    else if(message.includes('hey anna welcome'))
    {
        const finallText =
            welcome_message[Math.floor(Math.random() * welcome_message.length)];
        speech.text = finallText;
    }
    else if(message.includes('hey ana welcome'))
    {
        const finallText =
            welcome_message[Math.floor(Math.random() * welcome_message.length)];
        speech.text = finallText;
    }
    else if(message.includes('hey Anna welcome'))
    {
        const finallText =
            welcome_message[Math.floor(Math.random() * welcome_message.length)];
        speech.text = finallText;
    }
    else if(message.includes('hey Ana welcome'))
    {
        const finallText =
            welcome_message[Math.floor(Math.random() * welcome_message.length)];
        speech.text = finallText;
    }
    else if(message.includes('instructions'))
    {
        const finallText =
            quiz_instructions[Math.floor(Math.random() * quiz_instructions.length)];
        speech.text = finallText;
    }
    else if(message.includes('hey anna what are the instructions'))
    {
        const finallText =
            quiz_instructions[Math.floor(Math.random() * quiz_instructions.length)];
        speech.text = finallText;
    }
    else if(message.includes('hey ana what are the instructions'))
    {
        const finallText =
            quiz_instructions[Math.floor(Math.random() * quiz_instructions.length)];
        speech.text = finallText;
    }
    else if(message.includes('hey Anna what are the instructions'))
    {
        const finallText =
            quiz_instructions[Math.floor(Math.random() * quiz_instructions.length)];
        speech.text = finallText;
    }
    else if(message.includes('hey Ana what are the instructions'))
    {
        const finallText =
            quiz_instructions[Math.floor(Math.random() * quiz_instructions.length)];
        speech.text = finallText;
    }

    else if(message.includes('register'))
    {
        const finallText =
            command1[Math.floor(Math.random() * command1.length)];
        speech.text = finallText;
        register();

    }
    else if(message.includes('hey anna take me to registeration page'))
    {
        const finallText =
            command1[Math.floor(Math.random() * command1.length)];
        speech.text = finallText;
        register();

    }
    else if(message.includes('hey ana take me to registeration page'))
    {
        const finallText =
            command1[Math.floor(Math.random() * command1.length)];
        speech.text = finallText;
        register();

    }
    else if(message.includes('hey Anna take me to registeration page'))
    {
        const finallText =
            command1[Math.floor(Math.random() * command1.length)];
        speech.text = finallText;
        register();

    }
    else if(message.includes('take me to registration page'))
    {
        const finallText =
            command1[Math.floor(Math.random() * command1.length)];
        speech.text = finallText;
        register();

    }
    else if(message.includes('hey Ana take me to registeration page'))
    {
        const finallText =
            command1[Math.floor(Math.random() * command1.length)];
        speech.text = finallText;
        register();

    }
    else if(message.includes('login'))
    {
        const finallText =
            command2[Math.floor(Math.random() * command2.length)];
        speech.text = finallText;
        login();
    }
    else if(message.includes('hey anna take me to login page'))
    {
        const finallText =
            command2[Math.floor(Math.random() * command2.length)];
        speech.text = finallText;
        login();
    }
    else if(message.includes('hey ana take me to login page'))
    {
        const finallText =
            command2[Math.floor(Math.random() * command2.length)];
        speech.text = finallText;
        login();
    }
    else if(message.includes('hey Anna take me to login page'))
    {
        const finallText =
            command2[Math.floor(Math.random() * command2.length)];
        speech.text = finallText;
        login();
    }
    else if(message.includes('hey Ana take me to login page'))
    {
        const finallText =
            command2[Math.floor(Math.random() * command2.length)];
        speech.text = finallText;
        login();
    }
    else if(message.includes('hey Anna take me to Home page'))
    {
        const finallText =
            command2[Math.floor(Math.random() * command2.length)];
        speech.text = finallText;
        home();
    }
    else if(message.includes('hey Ana take me to Home page'))
    {
        const finallText =
            command2[Math.floor(Math.random() * command2.length)];
        speech.text = finallText;
        home();
    }
    else if(message.includes('hey ana take me to Home page'))
    {
        const finallText =
            command2[Math.floor(Math.random() * command2.length)];
        speech.text = finallText;
        home();
    }
    else if(message.includes('hey anna take me to Home page'))
    {
        const finallText =
            command2[Math.floor(Math.random() * command2.length)];
        speech.text = finallText;
        home();
    }
    else if(message.includes('take me to Home page'))
    {
        const finallText =
            command2[Math.floor(Math.random() * command2.length)];
        speech.text = finallText;
        home();
    }
    else if(message.includes('take me to home page'))
    {
        const finallText =
            command2[Math.floor(Math.random() * command2.length)];
        speech.text = finallText;
        home();
    }
    else if(message.includes('hey Ana take me to home page'))
    {
        const finallText =
            command2[Math.floor(Math.random() * command2.length)];
        speech.text = finallText;
        home();
    }
    else if(message.includes('take me to the home page'))
    {
        const finallText =
            command2[Math.floor(Math.random() * command2.length)];
        speech.text = finallText;
        home();
    }
    else if(message.includes('take me back to homepage'))
    {
        const finallText =
            command2[Math.floor(Math.random() * command2.length)];
        speech.text = finallText;
        home();
    }
    else if(message.includes('start quiz'))
    {
        const finallText =
            command4[Math.floor(Math.random() * command4.length)];
        speech.text = finallText;
        start_quiz();
    }
    speech.volume = 1;
    speech.rate = 0.75;
    speech.pitch = 1;

    window.speechSynthesis.speak(speech);
}
function register()
{
    //console.log('registeration form');
    location.replace('registration.jsp');
}
function login()
{
    //console.log('login page');
    location.replace('memberlogin.jsp');
}
function home()
{
    //console.log('home page');
    location.replace('index.jsp');
}
function start_quiz()
{
    //console.log('quiz category')
    location.replace('Quiz.jsp');
}
