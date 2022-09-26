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

function mainToggleTheme() {
  // Obtains an array of all <link>
  // elements.
  // Select your element using indexing.
  var theme2 = document.getElementsByTagName('link')[1];

  // Change the value of href attribute 
  // to change the css sheet.
  if (theme2.getAttribute('href') == 'stylesheets/header.css') {
      theme2.setAttribute('href', 'stylesheets/header-teacher.css');
      localStorage.setItem('themeData', '1');
  } else {
      theme2.setAttribute('href', 'stylesheets/header.css');
      localStorage.setItem('themeData', '0');
  }
}

function dataToggleTheme() {
  // Obtains an array of all <link>
  // elements.
  // Select your element using indexing.
  var theme2 = document.getElementsByTagName('link')[1];

  // Change the value of href attribute 
  // to change the css sheet.
  if (theme2.getAttribute('href') == '../../stylesheets/header.css') {
      theme2.setAttribute('href', '../../stylesheets/header-teacher.css');
      localStorage.setItem('themeData', '1');

  } else {
      theme2.setAttribute('href', '../../stylesheets/header.css');
      localStorage.setItem('themeData', '0');
  }
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

function dataToggleMode() {
  // Obtains an array of all <link>
  // elements.
  // Select your element using indexing.
  console.log(1);
  var theme = document.getElementsByTagName('link')[0];

  // Change the value of href attribute 
  // to change the css sheet.
  if (theme.getAttribute('href') == '../../stylesheets/light-theme.css') {
      theme.setAttribute('href', '../../stylesheets/dark-theme.css');
      localStorage.setItem('darkData', '1');
  } else {
      theme.setAttribute('href', '../../stylesheets/light-theme.css');
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


function darkmodeData() {
  var dData = localStorage.getItem('darkData');
  if (dData == '1'){
    toggleMode();
  }
}

function dbDarkmodeData() {
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

function themeChangeData(){
  var tData = localStorage.getItem('themeData');
  if(tData == '1'){
    toggleTheme();
    textSwap();
    //myFunction();
    console.log("1");
  }
}

function mainChangeData(){
  var tData = localStorage.getItem('themeData');
  if(tData == '1'){
    mainToggleTheme();
    console.log("2")
  }
}

function textSwap() {

  var z = document.getElementById("para1");
  var b = document.getElementById("para2");
  var c = document.getElementById("para3");
  var v = document.getElementById("para4");

  if (z.innerHTML === "The first thing all Students should learn on Microbits is the basics and as any programmer will tell you it all starts at Hello World! Hello, the world is where we all start as this simple idea will help develop an understanding of what coding may look like and what it is. The task is to get your program to print the words Hello World into your console. However as you cannot do this we will make a smile on the Micro:bits. Although many of you may have more experience it is always good to take a look at the basics again as a refresher.") {
    z.innerHTML = "For a Teacher it is very important you know what you and your students are trying to achive, so you yourself also need to understand where all programmers begin. Therefore you must also learn how to make a Hello world program. A hello World program is a program that will print the text Hello World into the console. For you and your students you will be using the built in block coders that come with Micro:bits for information on how to access this read the instruction that came with the Micro:bits";
    console.log("sufhiushfiuhf");
  } else {
    z.innerHTML = "The first thing all Students should learn on Microbits is the basics and as any programmer will tell you it all starts at Hello World! Hello, the world is where we all start as this simple idea will help develop an understanding of what coding may look like and what it is. The task is to get your program to print the words Hello World into your console. However as you cannot do this we will make a smile on the Micro:bits. Although many of you may have more experience it is always good to take a look at the basics again as a refresher.";
  }

  if (b.innerHTML === "Your first step is to get on makeCode.microbit.org and make sure you have a blue container with on start on it. If you do check the sidebar to its left and you should see categories. The one you want is the LED category (it is the dark purple one) and drag and drop the block called plot x it does not matter what the numbers are for now it should look like the screenshot.") {
    b.innerHTML = "The first thing you need to do is go onto the programmng website called makeCode.microbit.org. What you will see is two blue container. The one you want is the one that says On Start because this will run the code as soon as the program starts. Then what you will want to do is select the LED catagory and pick the option that shows X and Y co-ordinates as this will tell the Micro:bit which to turn on. look at the screenshot for reference";
    console.log("sufhiushfiuhf");
  } else {
    b.innerHTML = "Your first step is to get on makeCode.microbit.org and make sure you have a blue container with on start on it. If you do check the sidebar to its left and you should see categories. The one you want is the LED category (it is the dark purple one) and drag and drop the block called plot x it does not matter what the numbers are for now it should look like the screenshot.";
  }

  if (c.innerHTML === "As you may know the X and Y on your purple block control where the lights turn on. the X tells the computer how many columns it should go across. Where Y is how many rows down as 0,0 is the Top left. What you must do now is place the LEDs in the correct areas to make a smile. Each purple block controls one LED so keep adding more if you need more.") {
    c.innerHTML = "You may have notice the co-ordinates start on the top left. This is because this is how all images are rendered, it starts on the top left. You may have also notice 0 is equal to 1 on real graph. This happens because of how computers operate as 0 itself is a value and does not mean nothing. but to make it easy to remember computers start at zero where we start at one. To complete the face add more purple blocks to the program to add more active LEDs";
    console.log("sufhiushfiuhf");
  } else {
    c.innerHTML = "As you may know the X and Y on your purple block control where the lights turn on. the X tells the computer how many columns it should go across. Where Y is how many rows down as 0,0 is the Top left. What you must do now is place the LEDs in the correct areas to make a smile. Each purple block controls one LED so keep adding more if you need more.";
  }

  if (v.innerHTML === "Hopefully, you may have realised that 0 means 1 to a computer and hopefully you also achieved making a smiling face. This should be an easy introduction to the idea of programming. However, you may be wondering what the code look like. well above your code you should be able to see a JavaScript button, if you click it you will see the code written in the JavaScript programming language") {
    v.innerHTML = "This task may have been a little confusing, but trust me it becomes easier once you start seeing how computers work but you have now learned how to make LEDs turn on, on your micro:bits and you should also now have an understanding that counting also is different for computers, although these are not complex it will give you and your students a better understanding how different computers really are.";
    console.log("sufhiushfiuhf");
  } else {
    v.innerHTML = "Hopefully, you may have realised that 0 means 1 to a computer and hopefully you also achieved making a smiling face. This should be an easy introduction to the idea of programming. However, you may be wondering what the code look like. well above your code you should be able to see a JavaScript button, if you click it you will see the code written in the JavaScript programming language";
  }
}

function myFunction() {
  var y = document.getElementById("myDIV");
  if (y.innerHTML === "The first thing all Students should learn on Microbits is the basics and as any programmer will tell you it all starts at Hello World! Hello, the world is where we all start as this simple idea will help develop an understanding of what coding may look like and what it is. The task is to get your program to print the words Hello World into your console. However as you cannot do this we will make a smile on the Micro:bits. Although many of you may have more experience it is always good to take a look at the basics again as a refresher.") {
    y.innerHTML = "For a Teacher it is very important you know what you and your students are trying to achive, so you yourself also need to understand where all programmers begin. Therefore you must also learn how to make a Hello world program. A hello World program is a program that will print the text Hello World into the console. However we cannot do this so the best equivalent which is to make a smile with the light grid. For you and your students you will be using the built in block coders that come with Micro:bits for information on how to access this read the instruction that came with the Micro:bits";
  } else {
    y.innerHTML = "The first thing all Students should learn on Microbits is the basics and as any programmer will tell you it all starts at Hello World! Hello, the world is where we all start as this simple idea will help develop an understanding of what coding may look like and what it is. The task is to get your program to print the words Hello World into your console. However as you cannot do this we will make a smile on the Micro:bits. Although many of you may have more experience it is always good to take a look at the basics again as a refresher.";
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