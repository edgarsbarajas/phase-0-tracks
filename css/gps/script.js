console.log("The script is running!");

function addDottedBorder(event) {
  event.target.style.border = "3px dotted white";
}
var section = document.getElementsByClassName("column-2")[0];

section.addEventListener(:onmouseover, addDottedBorder);

