function evaluate()
{
    var q1 = document.forms["form1"]["opt1"].value;
    var q2 = document.forms["form1"]["opt2"].value;
    var q3 = document.forms["form1"]["opt3"].value;
    var q4 = document.forms["form1"]["opt4"].value;
    var q5 = document.forms["form1"]["opt5"].value;
    var score = 0;
    var c_ans = q1
    for(var i=1;i<6;i++)
    {
        var response=q[i];
       
        if(response == questions[i].answer)
        {
            score++;
            alert("correct");
        }
        else
        {
            alert("Wrong!");
        }
    }
    alert("you got"+score+"/"+questions.length);
}