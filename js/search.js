function openPage()
{
  var temp = document.getElementById("search").value;

  if(temp === "register")
  {
    location.replace("./registration.jsp");
  }
  else if(temp === "signup")
  {
    location.replace("./registration.jsp");
  }
  else if(temp === "About")
  {
    location.replace("./about.jsp");
  }
  else if(temp === "Contact")
  {
    location.replace("./contact.jsp");
  }
  else if(temp === "login")
  {
    location.replace("./memberlogin.jsp");
  }
  else if(temp === "signin")
  {
    location.replace("./memberlogin.jsp");
  }
  else if(temp === "Online Venue Reservation")
  {
    location.replace("./reservation.jsp");
  }
  else if(temp === "Online Venue Cancellation")
  {
    location.replace("./cancellation.jsp");
  }
  else if(temp === "Provide Venue")
  {
    location.replace("./venue_provider/provide_venues.html");
  }
}