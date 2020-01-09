document.addEventListener("DOMContentLoaded", () => {
	const welcomeParagraph = document.querySelector("#welcome-paragraph");

	console.log(welcomeParagraph);
	console.dir(welcomeParagraph);

	const redListItem = document.querySelector("li.red");
	redListItem.textContent = "RED!";
	redListItem.classList.add("bold");
	console.dir(redListItem);

	const allRedElements = document.querySelectorAll(".red");
    console.dir(allRedElements);
    
    const newListItem = document.createElement('li')
    newListItem.textContent = "Purple"
    newListItem.classList.add("purple")

    const list = document.querySelector('ul');
    list.appendChild(newListItem)
});