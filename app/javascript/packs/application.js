require("@rails/ujs").start()
require("@rails/activestorage").start()
require("channels")

import "bootstrap";
import flatpickr from "flatpickr";




document.querySelector('.flatpickr', (e) => {
  flatpickr(".flatpickr", {

  });
})
