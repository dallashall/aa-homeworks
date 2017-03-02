document.addEventListener("DOMContentLoaded", () => {
  // toggling restaurants

  const toggleLi = (e) => {
    const li = e.target;
    if (li.className === "visited") {
      li.className = "";
    } else {
      li.className = "visited";
    }
  };

  document.querySelectorAll("#restaurants li").forEach((li) => {
    li.addEventListener("click", toggleLi);
  });



  // adding SF places as list items

  // --- your code here!
  const addPlaces = (e) => {
    e.preventDefault();
    const input = document.getElementsByClassName('favorite-input')[0];
    const text = input.value;
    const ul = document.getElementById('restaurants');
    const li = document.createElement("li");
    console.log(ul);
    li.textContent = text;
    ul.appendChild(li);
    input.value = "";
  }

  document.getElementsByClassName('favorite-submit')[0].addEventListener("click",
addPlaces);


  // adding new photos

  // --- your code here!
const showForm = (e) => {
  const div = document.getElementsByClassName("photo-form-container")[0];
  const classes = div.classList;
  classes.toggle("hidden");
}

document.getElementsByClassName("photo-show-button")[0].addEventListener('click', showForm);

const addImg = (e) => {
  e.preventDefault();
  const img = document.createElement("img");
  console.log(img);
  const input = document.getElementsByClassName("photo-url-input")[0];
  const href = input.value;
  const li = document.createElement("li");
  const ul = document.getElementsByClassName("dog-photos")[0];
  img.setAttribute("src", href);
  li.appendChild(img);
  ul.appendChild(li);
}

document.getElementsByClassName("photo-url-submit")[0].addEventListener('click', addImg);

});
