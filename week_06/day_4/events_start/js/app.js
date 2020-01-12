document.addEventListener('DOMContentLoaded', () => {

  console.log('DOMContentLoaded')

const button = document.querySelector('#button')
button.addEventListener('click', handleButtonClick)

const textInput = document.querySelector('#input')
textInput.addEventListener('input', handleInput)

const select = document.querySelector("#select");
select.addEventListener('change', handleSelect);

const form = document.querySelector("#form")
form.addEventListener('submit', handleFormSubmit)

});

const handleFormSubmit = function(event){
 event.preventDefault()
const resultParagraph = document.querySelector("#form-result");
resultParagraph.textContent = `It's going to be: ${event.target.first_name.value} ${event.target.last_name.value}`;
}

const handleButtonClick = function(){
// console.log('button has been clicked')
const resultParagraph = document.querySelector("#button-result")
resultParagraph.textContent = "That button was clicked"
}

const handleInput = function(event){
  const resultParagraph = document.querySelector("#input-result");
  resultParagraph.textContent = `You typed: ${event.target.value}`;
}

const handleSelect = function(){
 const resultParagraph = document.querySelector("#select-result");
 resultParagraph.textContent = `You selected: ${event.target.value}`;
}

