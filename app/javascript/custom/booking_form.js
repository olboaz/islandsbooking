const updatePrice = (event) => {
  const submitButton = document.getElementById('booking-submit');
  const price = parseFloat(document.getElementById('price').dataset.price);
  let totalPriceInput = document.getElementById('total-price');

  let nights = parseInt(event.currentTarget.value, 10);
  if (isNaN(nights)) {
    totalPriceInput.setAttribute("value", 0);
  } else {
    totalPriceInput.setAttribute("value", price.toFixed(2) * nights);
  }
  if (parseInt(totalPriceInput.getAttribute("value"), 10) === 0) {
    submitButton.disabled = true;
  } else {
    submitButton.disabled = false;
  }
}

export { updatePrice };
