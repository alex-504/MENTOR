const updatePrice = () => {

  //const duration = document.querySelector('#consultation_duration');


  const updateTotal = (event) => {
    const mentorPrice = document.querySelector('#price');
    const price = Number.parseInt( mentorPrice.innerText , 10);
    const duration = Number.parseInt( event.currentTarget.value , 10);
    const total = (duration / 30) * price
    console.log(duration)
    console.log(price)
    console.log(mentorPrice)

    const totalElement = document.querySelector('#total')
    totalElement.innerHTML = `<li>Total: ¥${total}</li>`
  }

  const formSelect = document.querySelector('#consultation_duration');
  formSelect.addEventListener('change', updateTotal);

}

export {updatePrice}
