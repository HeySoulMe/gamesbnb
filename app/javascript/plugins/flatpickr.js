import flatpickr from "flatpickr";
import rangePlugin from "flatpickr/dist/plugins/rangePlugin";
// import 'flatpickr/dist/themes/flatpickr.min.css';

const flatpicker = () => {
  
  flatpickr("#start_at", {
    altInput: true,
    enableTime: true,
    plugins: [new rangePlugin({ input: "#end_at"})]
  });
}

export { flatpicker };
