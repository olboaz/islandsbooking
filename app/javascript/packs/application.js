require("@rails/ujs").start()
require("turbolinks").start()
require("@rails/activestorage").start()
require("channels")

import "bootstrap";
import { loadDynamicBannerText } from '../components/homebanner';
import { toggleDropdownMenu } from "../components/navbar";
import { updatePrice } from '../custom/booking_form';
import { initFlatpickr } from '../plugins/init_flatpickr';

document.addEventListener('turbolinks:load', () => {
  loadDynamicBannerText();
  toggleDropdownMenu();
  initFlatpickr();

  const nbOfNightsInput = document.getElementById('booking_nb_of_nights');
  const bookingForm = document.getElementById('booking-form');
  if (bookingForm) {
    nbOfNightsInput.addEventListener('input', updatePrice);
  };
});

