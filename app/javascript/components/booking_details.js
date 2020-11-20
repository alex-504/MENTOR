

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

    const totalElement = document.querySelector('#total');
    totalElement.innerHTML = `<li><span>Total:</span> ¥${total}</li>`

    const durationElement = document.querySelector('#cons-duration');
    durationElement.innerHTML = `<li><span>Duration:</span><br> ${duration} minutes</li>`
  }

  const updateDate = (event) => {
    const date = event.currentTarget.value

    const d = new Date(date);
    const ye = new Intl.DateTimeFormat('en', { year: 'numeric' }).format(d);
    const mo = new Intl.DateTimeFormat('en', { month: 'short' }).format(d);
    const da = new Intl.DateTimeFormat('en', { day: '2-digit' }).format(d);
    const hr = new Intl.DateTimeFormat('en', { hour: '2-digit' }).format(d);
    const mi = new Intl.DateTimeFormat('en', { minute: '2-digit' }).format(d);
    console.log(`${da}-${mo}-${ye}`);
    //console.log(dateFormat(d, "dddd, mmmm dS, yyyy, h:MM:ss TT"));

    const dateElement = document.querySelector('#cons-date');
    dateElement.innerHTML = `<li><span>Starting on:</span><br> ${da}-${mo}-${ye} ${hr}:${mi}</li>`
  }


  const formSelect = document.querySelector('#consultation_duration');
  formSelect.addEventListener('change', updateTotal);

  const dataSelect = document.querySelector('#consultation_start_time');
  dataSelect.addEventListener('change', updateDate);


}

export {updatePrice}
