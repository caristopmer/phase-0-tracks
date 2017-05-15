
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

/* Release 1 Pseudocode

Function will take 2 objects as arguments
Function will return true or false based on if the two objects
share a key-value pair.

Function will create arrays of each of the objects keys.
Function will iterate through first object's keys
 - Function will iterate through second object's keys as a nested loop
  - if current key is identical to key in first object, check
    to see if current associated value is identical to associated value in first
    object. If so, return true.
Once object iteration is complete and hasn't returned true, return false.
*/

function share_pair(obj1, obj2) {
  keys1 = Object.keys(obj1);
  keys2 = Object.keys(obj2);
  for (i = 0; i < keys1.length; i++) {
    for (x = 0; x < keys2.length; x++) {
      if (keys2[x] == keys1[i]) {
        if (obj2[keys2[x]] == obj1[keys1[i]]) {
          return true;
        }
      }
    }
  }
  return false;
}

/* Release 2 Pseudocode

Function will take an integer as an argument
Function will return an array of random words of random length. Array
will be the length of the integer argument.

Function will create an alphabet string used to create random words.
Initialize a return array to be filled with random words.
Integer argument: n
Function will loop n times to fill the return array with random words.
  - Initialize a random word empty string. Then loop 1-10 times(randomly):
    - Add a random character from the alphabet to the random word string.
  - Add the random word to the return array.
When done filling return array to desired length, return the array.
*/

function random_data(n) {
  var alpha = "abcdefghijklmnopqrstuvwxyz";
  var random_array = [];
  for (i = 0; i < n; i++) {
    var random_word = "";
    for (x = 0; x < (Math.floor(Math.random() * 10) + 1); x++) {
      random_word += alpha[Math.floor(Math.random() * 26)];
    }
    random_array.push(random_word);
  }
  return random_array;
}


// Release 0 Test Code
var test1 = ["long phrase","longest phrase","longer phrase"];
var test2 = ["four", "eleven", "a", "thirteen", "twenty four", "eight", "one"];

console.log(longest_item(test1));
console.log(longest_item(test2));

// Release 1 Test Code
console.log(share_pair({name: "Steven", age: 54}, {name: "Tamir", age: 54}));
console.log(share_pair({name: "Steven", "age": 54}, {name: "Tamir", age: 54}));
console.log(share_pair({animal: "Dog", legs: 4}, {animal: "Dog", legs: 3}));
console.log(share_pair({animal: "Dawg", legs: 4}, {animal: "Dog", legs: 3}));
console.log(share_pair({name: "Steven", age: 21}, {name: "Tamir", age: 54}));

// Release 2 Test Code
console.log(random_data(3));
console.log(random_data(5));
console.log(random_data(7));