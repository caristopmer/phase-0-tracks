var header_border = document.getElementById("header");
header_border.style.border = "3px solid red";

var newHeading = document.createElement('h2');
var h2Text = document.createTextNode("This is our added header!");
newHeading.appendChild(h2Text);

header_border.appendChild(newHeading);

function addBlueBorder(event){
  event.target.style.border = "2px solid blue";
}

function addPurpleBackground(event){
  event.target.style.background = "purple";
}

var ul = document.getElementById("list");
ul.addEventListener("click", addBlueBorder);

var list = document.getElementsByTagName('li');
for(i = 0; i < list.length; i++){
  list[i].addEventListener("click", addPurpleBackground);
}

var paragraph = document.getElementsByTagName('p')[0];
paragraph.addEventListener("click", addPurpleBackground);