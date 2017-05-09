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