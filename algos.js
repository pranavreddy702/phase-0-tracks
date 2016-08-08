//Create a program that takes groups of words or sentences, 
//It should individually search for the items contained in them with the 
//greatest number of characters. 
//Program should the print result


function longestWord(array){
	
	var longer = '';
	
	for (var i = 0; i < array.length; i++) {

		if (array[i].length > longer.length) {
			longer = array[i];
		}
	}
	
	console.log("The longest word is: " + longer)
}

//DRIVER
longestWord(["big", "bigger", "biggest"])
longestWord(["bear", "dog", "elephant"])


function findKeyVal(obj1, obj2) {
		
	    if (obj1.name == obj2.name) {
			console.log("These object names match.")
			return true
		
		}else if (obj1.age == obj2.age){
			console.log("These object ages match.")
			return true
		
		}else {
			console.log("These objects do not match.")
			return false
		}
}

//DRIVER
obj1 = {name: "Steven", 
		age : 53
	}	
obj2 = {name : "Tamir", 
		age : 54
	}
findKeyVal(obj1, obj2)


function generateRandom(bigger) {
	
	wordarr = []
	var alphabet = "abcdefghijklmnopqrstuvwxyz"
	var newword = ''
	var rand = Math.random() * 26
	var count = 0

	
	while (count < bigger) {
	
		for (i = 0; i < rand; i ++ ) {
	
			newword += alphabet.charAt(Math.floor(Math.random() * alphabet.length));
			rand = Math.random() * 26
		}
	
	wordarr.push(newword)
	newword = ''
	count += 1
}

	console.log(wordarr)
}

//DRIVER
var counter = 0
while (counter < 10) {
	generateRandom(10);
	var randomarr = wordarr;
	longestWord(randomarr);
	counter += 1
}