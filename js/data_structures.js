// Challenge 7.2 Pair Program, 5/9/17
// Enrico Desantis
// Chris McMenomy

var colors = ["blue", "red", "green", "yellow"];
var horses = ["Joe", "Ed", "Betsy", "Lou"];

colors.push("purple");
horses.push("Frankenstein");

console.log(colors);
console.log(horses);

// Release 1
var horse_colors = {};

for (i = 0; i < horses.length; i++) {
  horse_colors[horses[i]] = colors[i];
}

console.log(horse_colors);

// Release 2

function Car(color, wheels, is_fast) {
  console.log("Creating new car...");
  this.color = color;
  this.wheels = wheels;
  this.is_fast = is_fast;

  console.log("Car complete:", this);

  this.rev = function() {
    console.log("Vroom, vroooooom!");
  }
}

var car1 = new Car("Red", 4, true);
var car2 = new Car("Green", 3, false);

car1.rev();
