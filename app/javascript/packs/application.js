require("@rails/ujs").start()
require("turbolinks").start()
require("@rails/activestorage").start()
require("channels")

import "bootstrap";
import { loadDynamicBannerText } from '../components/homebanner';
import { toggleDropdownMenu } from "../components/navbar";
import { initFlatpickr } from '../plugins/init_flatpickr';

document.addEventListener('turbolinks:load', () => {
  loadDynamicBannerText();
  toggleDropdownMenu();
  initFlatpickr();
});

