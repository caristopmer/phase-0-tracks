/*
String Reverser Pseudocode

Function will take a string as an argument.
Function will initialize a new empty string to store the reversed string in.
New reversed string will be returned by function

Reversal will loop backwards through the intake string and add the value at each index to the new string.
Once complete, the new string will be a reversed version of the intake string.
Return new string.
*/

function reverse(string) {
  var new_string = '';
  for (i = string.length - 1; i >= 0; i--) {
    new_string += string[i];
  }
  return new_string;
}

// console.log(reverse("Howdy"));
// console.log(reverse("hello"));
// console.log(reverse("mississippi"));
// console.log(reverse("programmer"));

var stored_output = reverse("JavaScript is wonderful");

if (5 == 5) {
  console.log(stored_output)
}
else {
  console.log("As long as 5 is equal to 5, this will never print.")
}