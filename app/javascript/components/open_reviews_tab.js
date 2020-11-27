const openReviewsTab = () => {
  const tab = document.querySelector('#all-reviews')
  console.log(tab)

  if (tab) {
    tab.addEventListener('click', (event) => {
      event.preventDefault()
      document.querySelector('#reviews-tab').click()
    })
  }
}

export {openReviewsTab}
