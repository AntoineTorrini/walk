import { autocomplete } from "../lib/autocomplete.js";

let data = gon.cities
const villes = [];

for (let i = 0; i < data.length; i++) {
  villes.push(data[i].name);
}

autocomplete(document.getElementById("myInput"), villes);

// Validation
document.querySelector(".form-container").addEventListener("submit", (event) => {
  const input = document.getElementById("myInput").value;
  if (villes.includes(input)) {
    // Pass
  } else {
    event.preventDefault();
  }
});
