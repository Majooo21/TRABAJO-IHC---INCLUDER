//VALIDACION DE FORMULARIO
const form = document.querySelector('form[name="frm"]');
form.addEventListener("submit", (event) => {
  const nombrelugar = form.elements["nombrelugar"].value;
  const tipolugar = form.elements["tipolugar"].value;
  const comentadicional = form.elements["comentadicional"].value;

  if (!nombrelugar || !tipolugar || !comentadicional) {
    event.preventDefault();
    alert("Por favor, complete todos los campos del formulario");
  } else if (comentadicional.length < 5) {
    event.preventDefault();
    alert("El comentario adicional debe tener al menos 5 caracteres");
  }
});

const stars = document.querySelectorAll("#rating span");

stars.forEach((star, index) => {
  star.addEventListener("click", () => {
    stars.forEach((s, i) => {
      if (i <= index) {
        s.classList.add("active");
      } else {
        s.classList.remove("active");
      }
    });
  });
});
