import flatpickr from "flatpickr";

const getDaysDiff = (selectedDates) => {
  const begin = selectedDates[0];
  const last = selectedDates[1];
  if (begin && last) {
    return Math.round((last.getTime() - begin.getTime()) / (1000 * 3600 * 24));
  }
}


const setNbNights = (countNights, value) => {
  countNights.setAttribute("value", value);
}

const setDefaultElement = (element) => {
  element.setAttribute("value", 0);
}

const activateSubmit = () => {
  const totalPriceInput = document.getElementById('total-price');
  const submitButton = document.getElementById('booking-submit');

  if (parseInt(totalPriceInput.getAttribute("value"), 10) === 0) {
    submitButton.disabled = true;
  } else {
    submitButton.disabled = false;
  }
}

const initFlatpickr = () => {
  const startDate = document.getElementById('start-date-booking');
  if (startDate) {
    const unvailableDates = JSON.parse(document.getElementById('booking-form-fields').dataset.unavailable)
    flatpickr(startDate, {
      mode: 'range',
      minDate: 'today',
      disable: unvailableDates,
      dateFormat: 'd-m-Y',
      onClose: (selectedDates) => {
        const days = getDaysDiff(selectedDates);
        const countNights = document.getElementById('count-nights');
        const totalPriceInput = document.getElementById('total-price');
        setDefaultElement(totalPriceInput);
        setDefaultElement(countNights );
        if (days) {
          setNbNights(countNights, days);
          const price = parseFloat(document.getElementById('price').dataset.price);
          const nights = countNights.getAttribute("value", days);
          totalPriceInput.setAttribute("value", price.toFixed(2) * parseInt(nights, 10));
        }
        activateSubmit();
      }
    });
  };
  
};

export { initFlatpickr };

