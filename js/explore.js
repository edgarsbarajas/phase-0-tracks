// a function that takes a string as a parameter and reverses the string. reverse("hello"), for example, should return "olleh"
// define new string variable to hold the reversed word
// loop through the taken in string starting from the end, adding it to the new string variable
// iterate the string backwards, adding each letter until the first letter is added

function reverse(word) {
  var newWord = ""
  for(var i = word.length; i >= 0; i--) {
    newWord += word[i]
  }

  return newWord
}

reversedWord = reverse("hello")

if(1==1)
  console.log(reversedWord)
else
  console.log("Yo, that's not true!")