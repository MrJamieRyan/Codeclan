const myNumbers =  [1, 2, 3, 4, 5];

const multiplyByTwo = function (numbers) {
    const result = numbers.map((number) => {
        return number * 2;
    });

    return result;
}

console.log(multiplyByTwo(myNumbers));

const getEvens = function(numbers) {
	const result = numbers.filter((number) => {
        return number % 2 === 0;
    });

	return result;
};

console.log(getEvens(myNumbers));

const sumElements = function (numbers) {
    let total = numbers.reduce((runningTotal, number) => {
        return runningTotal + number;
    }, 0);

    return total;
};

console.log(sumElements(myNumbers));