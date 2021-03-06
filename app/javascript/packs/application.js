// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

require("@rails/ujs").start()
require("turbolinks").start()
require("@rails/activestorage").start()
require("channels")


// Uncomment to copy all static images under ../images to the output folder and reference
// them with the image_pack_tag helper in views (e.g <%= image_pack_tag 'rails.png' %>)
// or the `imagePath` JavaScript helper below.
//
// const images = require.context('../images', true)
// const imagePath = (name) => images(name, true)


// ----------------------------------------------------
// Note(lewagon): ABOVE IS RAILS DEFAULT CONFIGURATION
// WRITE YOUR OWN JS STARTING FROM HERE 👇
// ----------------------------------------------------

// External imports
import "bootstrap";



// Internal imports, e.g:
import { initConsultationCable } from '../channels/consultation_channel.js'
import { initSelect2 } from '../components/init_select2';
import { initStarRating } from '../plugins/init_star_rating';

import { updatePrice } from '../components/booking_details';
import { openCertifyContent } from '../components/certify';
import { updateVideoWindow } from '../components/update_video_window';
import { openReviewsTab } from '../components/open_reviews_tab';
import { openConsultationsTab } from '../components/open_consultations_tab';


document.addEventListener('turbolinks:load', () => {
  // Call your functions here, e.g:
  initConsultationCable();
  initSelect2();
  initStarRating();
  // updatePrice();
  updatePrice();
  openCertifyContent();
  updateVideoWindow();
  openReviewsTab();
  openConsultationsTab();
});
