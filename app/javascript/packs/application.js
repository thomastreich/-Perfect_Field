require("@rails/ujs").start();
require("turbolinks").start();
require("@rails/activestorage").start();
require("channels");

import "bootstrap";

// import flatpickr from "flatpickr";
import { initMapbox } from '../plugins/init_mapbox';
import calculatePrice from '../plugins/calculate_price';

document.addEventListener('turbolinks:load', () => {
  initMapbox();
  calculatePrice();
  // if (document.querySelector('.flatpickr')) {
  //   flatpickr(".flatpickr", {});
  // }
});
