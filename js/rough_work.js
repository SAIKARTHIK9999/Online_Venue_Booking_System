var button = document.getElementById("next_button");
setInterval(function() {
    for (var i = 0; i < 5;i++) 
    {
        button.click()
    }
},10)

var count = (function () {
    var counter = 0;
    return function () {return counter +=1;}
})();  

displaycount();

function displaycount()
{
    document.getElementById("click_count").innerHTML = count();
}