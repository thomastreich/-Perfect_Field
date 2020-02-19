require("@rails/ujs").start();
// require("turbolinks").start();
require("@rails/activestorage").start();
require("channels");

import "bootstrap";

import flatpickr from "flatpickr";
import { initMapbox } from '../plugins/init_mapbox';


// document.addEventListener('turbolinks:load', () => {
  if (document.querySelector('#map')) initMapbox();
  if (document.querySelector('.flatpickr')) flatpickr(".flatpickr", {});
// })
