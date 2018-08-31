import "bootstrap";
import { loadDynamicBannerText } from '../components/banner';
import { initUpdateNavbarOnScroll } from '../components/navbar';
import { hideButton } from '../components/navbar';
import { initRadioButtons } from '../components/radiobuttons';
import { initCarousel } from '../components/carousel';

loadDynamicBannerText();
initUpdateNavbarOnScroll();
initCarousel();
hideButton();
initRadioButtons();