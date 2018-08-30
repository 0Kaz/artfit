function initUpdateNavbarOnScroll() {
  const navbar = document.querySelector('.navbar-wagon');
  if (navbar) {
    window.addEventListener('scroll', () => {
      if (window.scrollY >= window.innerHeight) {
        navbar.classList.add('navbar-wagon-white');
      } else {
        navbar.classList.remove('navbar-wagon-white');
      }
    });
  }
}

function hideButton() {
  const buttonSelection = document.querySelector(".search_input");
  const inputSelection = document.querySelector(".product-search");

  buttonSelection.addEventListener("click", (event) => {
      event.preventDefault();
      inputSelection.classList.toggle("hide");
   });
  }
export { initUpdateNavbarOnScroll };
export { hideButton };
