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
  } else if (!validateNumeros(fphone)) {
    event.preventDefault();
    alert("Por favor, ingrese solo números en celular.");
  }
});

//CREAR FUNCION validateEmail
function validateEmail(email) {
  const re = /^[a-zA-Z0-9._]+@[a-zA-Z0-9]+\.[a-zA-Z]/;
  return re.test(String(email).toLowerCase());
}
//CREAR FUNCION validar numeros para edad y celular
function validateNumeros(value) {
  const re = /^\d+$/; // Verifica que solo contenga dígitos
  return re.test(value);
}
