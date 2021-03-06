const calculatePrice = () => {
  // Recuperer tous les inputs
  document.querySelector('#form').addEventListener('change', (event) => {

    const start_year = document.getElementById("booking_starting_date_1i").value;
    const start_month = document.getElementById("booking_starting_date_2i").value;
    const start_day = document.getElementById("booking_starting_date_3i").value;
//
    // console.log(start_year, start_month, start_day)

    const start_date = start_year + " " + start_month + " " + start_day;
    const parse_start_date = Date.parse(start_date);

    const end_year = document.getElementById("booking_ending_date_1i").value;
    const end_month = document.getElementById("booking_ending_date_2i").value;
    const end_day = document.getElementById("booking_ending_date_3i").value;

    // console.log(end_year, end_month, end_day)

    const end_date = end_year + " " + end_month + " " + end_day;
    const parse_end_date = Date.parse(end_date);

    const price_moisso = document.querySelector('.card-trip-pricing').dataset.price;
    const diff = parse_end_date - parse_start_date + 86400000;
    const price_per_day = diff / 86400000;

    console.log(price_moisso)
    console.log(diff)
    console.log(price_per_day)

    let total_price = price_per_day * price_moisso;
    document.getElementById("booking_price").value = `${total_price} € ` ;
    console.log(total_price);
  });
}

export default calculatePrice;
