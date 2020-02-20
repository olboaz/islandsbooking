require("@rails/ujs").start()
require("turbolinks").start()
require("@rails/activestorage").start()
require("channels")

import "bootstrap";
import { loadDynamicBannerText } from '../components/homebanner';
import { toggleDropdownMenu } from "../components/navbar";
import { initAutocomplete } from '../plugins/init_autocomplete'
import { initFlatpickr } from '../plugins/init_flatpickr';
import { initMapbox } from '../plugins/init_mapbox';
import $ from 'jquery';
global.$ = jQuery;
import { initStarRating } from '../plugins/init_star_rating';

document.addEventListener('turbolinks:load', () => {
  loadDynamicBannerText();
  toggleDropdownMenu();
  initFlatpickr();
  initAutocomplete();
  initMapbox();
  initStarRating();
});

