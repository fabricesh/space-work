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
            //return !(date.getDate() % 8);
            disable: ["2025-01-30", "2025-02-21", "2025-03-08", new Date(2025, 4, 9) ]
        }
    ]
});
