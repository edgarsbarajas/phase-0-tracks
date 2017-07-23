// FindLongestString function:
// Take in a string array
// Create a place holder for the largest string and the length of the largest string
// Iterate through all strings of an array
// Check if the length of the current string is larger than the length of longestString place holder
// if it is larger: That string becomes the largest string, and place holder for largest string length
// Continue to loop until all strings in array has been checked
// return longest string

// FindMatches function: takes in 2 objects
// iterate through the first object:
  // within the loop, iterate through the second object to compare the first object key to second object keys
    // If there is a match, compare their values
      // If the values match, a key-value match has been found
// Return whether or not a key-value match was found


function FindLongestString(arrayOfStrings){
  var longestStringLength = 0;
  var longestString = "";

  for(var i=0; i<arrayOfStrings.length; i++){
    if(arrayOfStrings[i].length > longestStringLength ){
      longestStringLength = arrayOfStrings[i].length;
      longestString = arrayOfStrings[i];
    }
  }

  return longestString;
}

function findMatches(object1, object2){
  var match = false;

  for(var key1 in object1){
    for(var key2 in object2){
      if(key1 == key2){
        if(object1[key1] == object2[key2]){
          match = true;
          break;
        }
      }
    }
  }

  return match;
}

// Driver for FindLongestString
var s = FindLongestString(["long phrase","longest phrase","longer phrase"]);
console.log(s);

s = FindLongestString(["woopty","woop","wooooopty-do", "yay"]);
console.log(s);

s = FindLongestString(["one","two","three", "fourfivesix"]);
console.log(s);

// Driver for findMatches
var match = findMatches({name: "Steven", age: 54}, {name: "Tamir", age: 54});
console.log(match); //true

match = findMatches({animal: "Dog", legs: 4}, {animal: "Dog", legs: 3});
console.log(match); //true

match = findMatches({boo: "Dog", legs: 4}, {hoo: "Dog", wheels: 3});
console.log(match); //false




