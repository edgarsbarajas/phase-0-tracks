var colors = ["blue", "green", "lava red", "grabber orange"]
var horseNames = ["Ed", "Eddy", "Sean", "Peaches"]

colors.push("black")
horseNames.push("Bonnie")

// add code that will use your two arrays to create an object. The
// keys of your object should be horse names,
// and the values should be colors. Your solution should be
// something that would work for any number of colors/horses,
// as long as the two arrays are the same length

horses = {}

for(var i = 0; i < horseNames.length; i++){
  horses[horseNames[i]] = colors[i]
}

console.log(horses)

// write a constructor function for a car. Give it a few different
//properties of various data types, including at least one
//function. Demonstrate that your function works by creating a few
//cars with it.

function Car(year, make, model, topSpeed) {
  this.year = year;
  this.make = make;
  this.model = model;
  this.topSpeed = topSpeed;

  this.goFast = function() { console.log("Now going " + this.topSpeed + "mph"); }
}

var mustang = new Car(2014, "Ford", "Mustang", 160);
console.log(mustang.year + " " + mustang.make + " " + mustang.model);
mustang.goFast();

//-----

var corvette = new Car(2017, "Chevy", "Corvette", 200);
corvette.year = 2015;
console.log(corvette.year + " " + corvette.make + " " + corvette.model);
corvette.goFast();



