// VALIDACION DE FORMULARIO
const form = document.querySelector('form[name="frm"]');
form.addEventListener("submit", (event) => {
  const femail = form.elements["femail"].value;
  const fpassword = form.elements["fpassword"].value;

  // Validar que los campos no estén vacíos
  if (!femail || !fpassword) {
    event.preventDefault();
    alert("Por favor, complete todos los campos del formulario.");
  } else if (!validateEmail(femail)) {
    event.preventDefault();
    alert("Por favor, ingrese un correo electrónico válido.");
  }
});

// CREAR FUNCION validateEmail
function validateEmail(femail) {
  const re = /^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$/; // Expresión regular mejorada para validar correos
  return re.test(String(femail).toLowerCase());
}
