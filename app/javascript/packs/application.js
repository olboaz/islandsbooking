require("@rails/ujs").start()
require("@rails/activestorage").start()
require("channels")

import "bootstrap";
import { updatePrice } from '../custom/booking_form';

const nbOfNightsInput = document.getElementById('booking_nb_of_nights');
const bookingForm = document.getElementById('booking-form');

if (bookingForm) {
  nbOfNightsInput.addEventListener('keyup', updatePrice);
};
