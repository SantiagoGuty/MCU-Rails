// Application JS

//= require rails-ujs
//= require turbolinks
//= require_tree .

document.addEventListener("DOMContentLoaded", () => {
    console.log("application.js is loaded!");
  
    const characterImages = document.querySelectorAll(".character-item img");
    console.log("Found images:", characterImages);
  
    characterImages.forEach((img) => {
      console.log("Adding hover effect to:", img); // Debug line
  
      img.addEventListener("mouseover", () => {
        console.log("Hovered over image:", img); // Debug line
        img.style.transition = "all 0.3s ease-in-out";
        img.style.transform = "scale(1.1)";
        img.style.boxShadow = "0 4px 8px rgba(0, 0, 0, 0.3)";
      });
  
      img.addEventListener("mouseout", () => {
        console.log("Mouse out of image:", img); // Debug line
        img.style.transform = "scale(1)";
        img.style.boxShadow = "none";
      });
    });
  });
  