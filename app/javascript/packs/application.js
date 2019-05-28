import "bootstrap";
import 'flatpickr/dist/flatpickr.css';
import flatpickr from 'flatpickr';
import 'mapbox-gl/dist/mapbox-gl.css'; // <-- you need to uncomment the stylesheet_pack_tag in the layout!
import { initMapbox } from '../plugins/init_mapbox';
import '@mapbox/mapbox-gl-geocoder/dist/mapbox-gl-geocoder.css';
import { initAutocomplete } from '../plugins/init_autocomplete';
import { toggle } from '../plugins/toggle';
toggle();


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

initMapbox();
initAutocomplete();
