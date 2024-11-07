// VALIDACIÓN DE FORMULARIO
const form = document.querySelector('form[name="frm"]');
form.addEventListener("submit", (event) => {
  const fname = form.elements["fname"].value;
  const fphone = form.elements["fphone"].value;
  const femail = form.elements["femail"].value;
  const fpassword = form.elements["fpassword"].value;

  // Validación de campos individuales con alertas específicas
  // Validar que los campos no estén vacíos
  if (!fname || !fphone || !femail || !fpassword) {
    event.preventDefault();
    alert("Por favor, complete todos los campos del formulario.");
  } else if (!validateEmail(femail)) {
    event.preventDefault();
    alert("Por favor, ingrese un correo electrónico válido.");
  } else if (!validatePhone(fphone)) {
    event.preventDefault();
    alert("Por favor, ingrese un número de celular válido (9 dígitos, comenzando con 9)")
  }
});

//CREAR FUNCION validateEmail
function validateEmail(email) {
  const re = /^[a-zA-Z0-9._]+@[a-zA-Z0-9]+\.[a-zA-Z]/;
  return re.test(String(email).toLowerCase());
}
function validatePhone(fphone) {
  const validphone = /^9\d{8}$/;
  return validphone.test(fphone);
}
