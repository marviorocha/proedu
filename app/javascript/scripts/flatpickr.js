import "flatpickr/dist/themes/material_blue.css";
import { Portuguese } from "flatpickr/dist/l10n/pt"
// commonjs
const flatpickr = require("flatpickr");

// datapicker to application
flatpickr(".datepicker",
{
    altInput: true,
    altFormat: "j, F, Y",
    dateFormat: "d-m-Y",
    locale: Portuguese
}
);