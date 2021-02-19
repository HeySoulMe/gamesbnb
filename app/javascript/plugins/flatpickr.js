import flatpickr from "flatpickr";
import rangePlugin from "flatpickr/dist/plugins/rangePlugin";
// import 'flatpickr/dist/themes/flatpickr.min.css';

const flatpicker = () => {
  
  flatpickr("#start_at", {
    altInput: true,
    enableTime: true,
    plugins: [new rangePlugin({ input: "#end_at"})],
    onChange: function(selectedDates, dateStr, instance) {
      console.log(selectedDates)
      if (selectedDates.length === 2) {
        const differenceInTime = selectedDates[1].getTime() - selectedDates[0].getTime()
        const differenceInDays = differenceInTime / (1000 * 3600 * 24) + 1
        console.log(differenceInDays)
        const price = parseFloat(document.querySelector(".booking-show-card").dataset.price, 10)
        console.log(price)
        const totalAmount = price * differenceInDays
        document.getElementById("total-amount").innerText = `YOUR RENT TOTAL =  ${totalAmount.toFixed(2)} €`
        this.close();
      }
    }
  });
}
export { flatpicker };

