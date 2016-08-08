// Create a variable for hello.
// Begin a loop for each index value.
// Establish a variable that equals to the length of hello minus 1.
// Run the loop as long as i is greater than or equal to zero.
// Print that the value for each value of the hello variable with it's index at i.



var hello = "Hello";


for (var i = hello.length - 1; i >= 0; i--) {
	console.log(hello[i])
};


var word = "Sidewinder";
var wordStoreArr = [];


for (var x = word.length - 1; x >= 0; x--) {
	 wordStoreArr.push(word[x])
};
var newWord = wordStoreArr.join('');
console.log(newWord);


var height = 94;
var isShort = null;


if (height <= 50) {
	isTall = false;
	console.log("This house is short");
}	else if (height > 50) {
	isTall = true;
	console.log("This house is tall");
}
