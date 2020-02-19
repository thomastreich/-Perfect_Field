require("@rails/ujs").start();
require("turbolinks").start();
require("@rails/activestorage").start();
require("channels");

import "bootstrap";

import flatpickr from "flatpickr";
import { initMapbox } from '../plugins/init_mapbox';

document.addEventListener('turbolinks:load', () => {
  initMapbox();
  if (document.querySelector('.flatpickr')) {
    flatpickr(".flatpickr", {});
  }
});
