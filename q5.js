// Write a function in JavaScript that takes in a number n and returns the first n even numbers.

function even(n) {
	for (i=0; i < n*2; i++) {
		if (i%2 === 0) {
			console.log(i);
		}
	}
}

even(10);
