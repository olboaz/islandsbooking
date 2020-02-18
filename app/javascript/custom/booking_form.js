const updatePrice = (event) => {
  const price = parseFloat(document.getElementById('price').dataset.price);
  // console.log(parseFloat(document.getElementById('price').dataset.price) * 10)
  let totalPriceInput = document.getElementById('total-price');
  let nights = parseInt(event.currentTarget.value, 10);
  if (isNaN(nights)) {
    totalPriceInput.setAttribute("value", 0);
  } else {
    // totalPriceInput.value = price * nights;
    totalPriceInput.setAttribute("value", price.toFixed(2) * nights);
  }
}

export { updatePrice };
