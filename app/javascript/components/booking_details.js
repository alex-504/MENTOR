function formatMoney(number, decPlaces, decSep, thouSep) {
  decPlaces = isNaN(decPlaces = Math.abs(decPlaces)) ? 2 : decPlaces,
  decSep = typeof decSep === "undefined" ? "." : decSep;
  thouSep = typeof thouSep === "undefined" ? "," : thouSep;
  var sign = number < 0 ? "-" : "";
  var i = String(parseInt(number = Math.abs(Number(number) || 0).toFixed(decPlaces)));
  var j = (j = i.length) > 3 ? j % 3 : 0;

  return sign +
    (j ? i.substr(0, j) + thouSep : "") +
    i.substr(j).replace(/(\decSep{3})(?=\decSep)/g, "$1" + thouSep) +
    (decPlaces ? decSep + Math.abs(number - i).toFixed(decPlaces).slice(2) : "");
}


const updatePrice = () => {



  //const duration = document.querySelector('#consultation_duration');


  const updateTotal = (event) => {
    const mentorPrice = document.querySelector('#price');
    const price = Number.parseInt( mentorPrice.innerText.replace(/,/g, "") , 10);
    const duration = Number.parseInt( event.currentTarget.value , 10);
    const total = (duration / 30) * price
    console.log(duration)
    console.log(price)
    console.log(mentorPrice)
    // console.log(total.toFixed(3))
    console.log(formatMoney(total , 0, ".", ","))


    const totalElement = document.querySelector('#total');
    totalElement.innerHTML = `<h5><span>Total:</span> ¥${formatMoney(total , 0, ".", ",")}</h5>`

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
    console.log(d)
    //console.log(dateFormat(d, "dddd, mmmm dS, yyyy, h:MM:ss TT"));

    const dateElement = document.querySelector('#cons-date');
    dateElement.innerHTML = `<li><span>Starting on:</span><br> ${da}-${mo}-${ye} ${d.getHours()}:${d.getMinutes()}</li>`
  }


  const formSelect = document.querySelector('#consultation_duration');
  if (formSelect) {
    formSelect.addEventListener('change', updateTotal);

    const dataSelect = document.querySelector('#consultation_start_time');
    dataSelect.addEventListener('change', updateDate);
  }


}

export {updatePrice}
