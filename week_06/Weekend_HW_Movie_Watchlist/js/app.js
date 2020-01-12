document.addEventListener('DOMContentLoaded', () => {

  const form = document.querySelector('#new-movie-form');

  form.addEventListener('submit', handleFormSubmit);

  const deleteButton = document.querySelector('#delete-button');
  deleteButton.addEventListener('click', handleDeleteButton);

});

const handleFormSubmit = function (event) {
  event.preventDefault();

  const movieListItem = createMovieListItem(event.target);
  const movieList = document.querySelector('#movie-list');
  movieList.appendChild(movieListItem);

  event.target.reset();

}

const createMovieListItem = function (form) {

  const movieListItem = document.createElement('li');

  const movieTitle = document.createElement('h2');
  movietitle.id = 'movie-title-item';
  movietitle.textContent = `${form.name.value}`;
  movieListItem.appendChild(movietitle);

  const service = document.createElement('h3');
  service.id = 'service-item';
  service.textContent = `service: ${form.service.value}`;
  movieListItem.appendChild(service);

  return movieListItem;

};

const handleDeleteButtonClick = function () {
  
  document.querySelector("#movie-list").innerHTML = "";
};
