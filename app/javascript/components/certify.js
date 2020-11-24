const openCertifyContent = () => {
  const button = document.querySelector('#certify-mentee')

  if (button) {
    button.addEventListener('click', (event) => {
      event.preventDefault()
      document.querySelector('#certify-tab').click()
    })
  }
}

export {openCertifyContent}
