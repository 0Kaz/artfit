import "bootstrap";
import { loadDynamicBannerText } from '../components/banner';
import { initUpdateNavbarOnScroll } from '../components/navbar';
import { hideButton } from '../components/navbar';
import { initRadioButtons } from '../components/radiobuttons';

loadDynamicBannerText();
initUpdateNavbarOnScroll();
hideButton();
initRadioButtons();

