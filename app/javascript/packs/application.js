import "bootstrap";
import 'flatpickr/dist/flatpickr.css';
import flatpickr from 'flatpickr';


const fp = flatpickr("#datepicker", {
  altInput: true,
    altFormat: "F j, Y",
    dateFormat: "Y-m-d",
  mode: "range",
    minDate: "today",
    dateFormat: "Y-m-d",
    disable: [
        function(date) {
            // disable every multiple of 8
            return !(date.getDate() % 8);
        }
    ]
});
