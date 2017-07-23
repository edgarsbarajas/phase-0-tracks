// FindLongestString function:
// Take in a string array
// Create a place holder for the largest string and the length of the largest string
// Iterate through all strings of an array
// Check if the length of the current string is larger than the length of longestString place holder
// if it is larger: That string becomes the largest string, and place holder for largest string length
// Continue to loop until all strings in array has been checked
// return longest string

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

var s = FindLongestString(["long phrase","longest phrase","longer phrase"]);
console.log(s);

s = FindLongestString(["woopty","woop","wooooopty-do", "yay"]);
console.log(s);

s = FindLongestString(["one","two","three", "fourfivesix"]);
console.log(s);