document.addEventListener('DOMContentLoaded', () => {
  console.log('JavaScript loaded');

  const form = document.querySelector('#new-item-form')
  form.addEventListener("submit", handleFormSubmit);

  const listOfStuff = document.createElement('li');
  listOfStuff.textContent = `Title: ${event.target.title.value} Author: ${event.target.author.value} Category: ${event.target.category.value}`;
  listOfStuff.classList.add(list)

    document.getElementById("new-item-form").reset();
})

const handleFormSubmit = function(event) {
  event.preventDefault();
  const resultParagraph = document.querySelector('#reading-list')
  resultParagraph.textContent = ` Title: ${event.target.title.value} Author: ${event.target.author.value} Category: ${event.target.category.value}`;}
 
  