// var name = "John";
// var secretsFunction = function () {
//   var pinCode = [3, 5, 6, 1];
//   console.log("Inside Function:", name);
// };
//
// secretsFunction();
// console.log("Outside Function:", name);
var filterNamesByFirstLetter = function (names, letter) {
  var filteredNames = [];
  for (let name of names) {
    if (name[0] === letter) {
      filteredNames.push(name);
    }
  }
console.log('name after loop:', name);
return filteredNames;
};

var students = ['Lauren', 'Siggy', 'Luca'];
var filteredStudents = filterNamesByFirstLetter(students, 'L')
console.log('filteredStudents', filteredStudents);
