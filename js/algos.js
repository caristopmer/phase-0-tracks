
/* Release 0 Pseudocode

Function will take an array of words or phrases (strings) as an argument.
Function will return the longest word or phrase in array (string.)

Function will loop through the contents of the argument array
  - check the length of each item
  - index of longest item will be saved as a variable
  - if another element it found to be longer than current longest item,
    longest element index variable is updated
  - Once array iteration is complete, the item 
    at array[longest item index] is returned
*/

function longest_item(arr) {
  var longest_index = 0;
  for (i = 1; i < arr.length; i++) {
    if (arr[i].length > arr[longest_index].length) {
      longest_index = i;
    }
  }
  return arr[longest_index];
}

var test1 = ["long phrase","longest phrase","longer phrase"];
var test2 = ["four", "eleven", "a", "thirteen", "twenty four", "eight", "one"];

console.log(longest_item(test1));
console.log(longest_item(test2));

/* Release 1 Pseudocode






*/