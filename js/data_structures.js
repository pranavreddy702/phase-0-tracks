var colors = ["blue", "red", "black", "orange"];

var names = ["sid", "max", "molly", "ronda"];

// console.log(colors);
// console.log(names);

colors.push("silver");
names.push("hero");

// console.log(colors);
// console.log(names);

var horses = {}

for (var i = 0; i < colors.length; i++){
  horses[names [i]] = colors[i]
}

console.log(horses);



function Car(color, age, isFast) {
  console.log("Check out our new car:", this);
  
  this.color = color;
  this.age = age;
  this.isFast = isFast;
  
  this.rev = function() {
   console.log("Zoooom");
 };
}

var car1 = new Car("grey", 22, false);
var car2 = new Car("yellow", 1, true);
var car3 = new Car("white", 4, true);
console.log(car1);
car1.rev();
console.log(car2);
car2.rev()
console.log(car3.color)
car3.rev()