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