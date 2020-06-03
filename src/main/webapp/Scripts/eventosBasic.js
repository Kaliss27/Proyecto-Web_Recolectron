$(document).ready(function(){
   $(".icon").click(responsiveMenuBar()); 
});
function responsiveMenuBar() {
  var x = document.getElementById("topnavMenu");
  if (x.className === "topnav") {
    x.className += " responsive";
  } else {
    x.className = "topnav";
  }
}


