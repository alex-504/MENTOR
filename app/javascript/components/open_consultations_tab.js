const openConsultationsTab = () => {
  const tab = document.querySelector('#all-consultations')
  console.log(tab)

  if (tab) {
    tab.addEventListener('click', (event) => {
      event.preventDefault()
      document.querySelector('#consultations-tab').click()
    })
  }
}

export {openConsultationsTab}
