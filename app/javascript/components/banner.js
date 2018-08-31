import Typed from 'typed.js';

function loadDynamicBannerText() {
  console.log("loadDynamicBannerText");
  if($('#banner-typed-text')[0] != undefined)
  {
    new Typed('#banner-typed-text', {
      strings: ["Inspire. Design. Wear."],
      typeSpeed: 80,
      loop: true
    });
  }
}

export { loadDynamicBannerText };
