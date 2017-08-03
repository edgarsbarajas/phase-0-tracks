console.log("Script is working!")

function addPinkBorder(event) {
  event.target.style.border = "5px dotted pink"
  console.log("Successfully added a pink border!");
}

var dude = document.getElementById("cool-dude");
dude.addEventListener("click", addPinkBorder);

var button = document.getElementById("button");
button.addEventListener("click", function doCoolStuff(){
  document.getElementsByTagName("h1")[0].innerHTML = "NEW HEADER WHO DIS"
  console.log("changed the header!")

  var catPicture = document.createElement("IMG");
  catPicture.setAttribute("src", "cat.jpg");

  document.body.children[2].appendChild(catPicture);
  console.log("Added a cat! lol")
})

var test = document.getElementsByClassName("test");

for(var i = 0; i < test.length; i++){
  test[i].style.background = "pink";
}

$(document).ready(function(){
  $("button").click(function(){
    $("p").hide();
  })
})

$(document).ready(function(){
  $("#button").click(function(){
    document.body.style.background = "tan";
    console.log("Background is now tan!")
  })
})

$(document).ready(function(){
  $("p").hover(function(){
    alert("Hover!")
  })
})