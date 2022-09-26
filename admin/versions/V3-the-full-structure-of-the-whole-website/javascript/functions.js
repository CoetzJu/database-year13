// JavaScript

// You will see a lot of comment out code as this was
// as they are experimented methods to do functions.
// Some worked better then others, or they did not work.



// Slideshow javascript has been put into the HTML directly to avoid error
/*var slideIndex = 0;
carousel();
function carousel() {
  var i;
  var slideDeck = document.getElementsByClassName("mySlides");
  for (i = 0; i < slideDeck.length; i++) {
    slideDeck[i].style.display = "none";
  }
  slideIndex++;
  if (slideIndex > slideDeck.length) {slideIndex = 1}
  slideDeck[slideIndex-1].style.display = "block";
  setTimeout(carousel, 2000); // Change image every 2 seconds
}*/

//Function for Mode Select
function modeChange() {
  var element = document.body;
  
  element.classList.toggle("header-teacher.css");
}

function toggleTheme() {
  // Obtains an array of all <link>
  // elements.
  // Select your element using indexing.
  var theme2 = document.getElementsByTagName('link')[1];

  // Change the value of href attribute 
  // to change the css sheet.
  if (theme2.getAttribute('href') == '../stylesheets/header.css') {
      theme2.setAttribute('href', '../stylesheets/header-teacher.css');
      localStorage.setItem('themeData', '1');
  } else {
      theme2.setAttribute('href', '../stylesheets/header.css');
      localStorage.setItem('themeData', '0');
  }
}

// There is a main toggle as this refers to the index page
// where the other toggle handes the rest of the pages



function toggleMode() {
  // Obtains an array of all <link>
  // elements.
  // Select your element using indexing.
  var theme = document.getElementsByTagName('link')[0];

  // Change the value of href attribute 
  // to change the css sheet.
  if (theme.getAttribute('href') == '../stylesheets/light-theme.css') {
      theme.setAttribute('href', '../stylesheets/dark-theme.css');
      localStorage.setItem('darkData', '1');
  } else {
      theme.setAttribute('href', '../stylesheets/light-theme.css');
      localStorage.setItem('darkData', '0');
  }
}

function mainToggleMode() {
  // Obtains an array of all <link>
  // elements.
  // Select your element using indexing.
  console.log(1);
  var theme = document.getElementsByTagName('link')[0];

  // Change the value of href attribute 
  // to change the css sheet.
  if (theme.getAttribute('href') == 'stylesheets/light-theme.css') {
      theme.setAttribute('href', 'stylesheets/dark-theme.css');
      localStorage.setItem('darkData', '1');
  } else {
      theme.setAttribute('href', 'stylesheets/light-theme.css');
      localStorage.setItem('darkData', '0');
  }
}

function mainToggleTheme() {
  console.log(2);
  // Obtains an array of all <link>
  // elements.
  // Select your element using indexing.
  var theme2 = document.getElementsByTagName('link')[1];

  // Change the value of href attribute 
  // to change the css sheet.
  if (theme2.getAttribute('href') == 'stylesheets/header.css') {
      theme2.setAttribute('href', 'stylesheets/header-teacher.css');
  } else {
      theme2.setAttribute('href', 'stylesheets/header.css');
  }
}

function darkmodeData() {
  var dData = localStorage.getItem('darkData');
  if (dData == '1'){
    toggleMode();
  }
}

function mainDarkmodeData() {
  var dData = localStorage.getItem('darkData');
  if (dData == '1'){
    mainToggleMode();
  }
}

// This was a function for darkmode
/*function Darkmode() {
  var element = document.body;
  /*const myElement =  document.getElementById("page");
  myElement.style.color = "red";
  element.classList.toggle("dark-mode");
  element.classList.toggle("test-mode");
  localStorage.setItem('dark-mode-enabled',"yes");
}

function checkDarkMode(){
  var cheese = localStorage.getItem("darkModeStorage");
  if (cheese === "on"){
  }
  else JSON.parse(cheese);
}
*/
//This is for Text change
//https://stackoverflow.com/questions/48664368/change-text-on-the-click-of-a-button-javascript




// Local Storage TESTING
// https://www.w3schools.com/jsref/prop_win_localstorage.asp
//localStorage.setItem("TEST", "This is a local storage Test");
//localStorage.getItem("TEST");

// Javascript cookies
//https://www.w3schools.com/js/js_cookies.asp

// Experamental JS
// Text swapping
/*function myFunction() {
  var x = document.getElementById("myDIV");
  if (x.innerHTML === "Hello") {
    x.innerHTML = "Swapped text!";
  } else {
    x.innerHTML = "Hello";
  }
}*/

//For saving the dark-mode between pages
// https://stackoverflow.com/questions/71198296/keep-dark-or-light-mode-over-different-pages-with-javascript
/*checkbox.addEventListener( 'change', function() {
  localStorage.setItem('dark',this.checked);
  if(this.checked) {
       body.classList.add('dark')
  } else {
       body.classList.remove('dark')     
  }
});

if(localStorage.getItem('dark')) {
  body.classList.add('dark');
}*/