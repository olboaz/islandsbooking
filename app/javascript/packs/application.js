require("@rails/ujs").start()
require("turbolinks").start()
require("@rails/activestorage").start()
require("channels")

import "bootstrap";
import { loadDynamicBannerText } from '../components/homebanner';
import { toggleDropdownMenu } from "../components/navbar";
import { initAutocomplete } from '../plugins/init_autocomplete'
import { initFlatpickr } from '../plugins/init_flatpickr';
import $ from 'jquery';
global.$ = jQuery;

document.addEventListener('turbolinks:load', () => {
  loadDynamicBannerText();
  toggleDropdownMenu();
  initFlatpickr();
  initAutocomplete();
});

