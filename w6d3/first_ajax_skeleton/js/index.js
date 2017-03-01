console.log("Hello from the JavaScript console!");

// Your AJAX request here
$.ajax({
  type: 'GET',
  url: 'http://api.openweathermap.org/data/2.5/weather?q=NY,NY&appid=bcb83c4b54aee8418983c2aff3073b3b',
  success(data) {
    let weatherData = data;
    let description = data.weather[0].description;
    let city = data["name"];
    console.log(description);
    console.log(`In ${city}, it is ${description}.`);
  }
});

console.log("This runs second, then the API call finishes.")
// Add another console log here, outside your AJAX request
