import flatpickr from "flatpickr";

const initFlatpickr = () => {
  const startDate = document.getElementById('start-date-booking');
  // const endDate = document.getElementById('end-date-booking');
  if (startDate) {
    const unvailableDates = JSON.parse(document.getElementById('booking-form-fields').dataset.unavailable)
    console.log(unvailableDates);
    flatpickr(startDate, {
      minDate: 'today',
      disable: unvailableDates
    });
    // flatpickr(endDate, {
    //   dateFormat: 'd-m-Y',
    //   disable: unvailableDates
    // });
  };
  
};

export { initFlatpickr };

