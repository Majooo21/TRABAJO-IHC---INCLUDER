// VALIDACIÓN DE FORMULARIO
const form = document.querySelector('form[name="frm"]');
form.addEventListener("submit", (event) => {
  const fname = form.elements["fname"].value;
  const flastname = form.elements["flastname"].value;
  const femail = form.elements["femail"].value;
  const fdistrito = form.elements["fdistrito"].value;
  const fsex = form.elements["fsex"].value;
  const fmessage = form.elements["fmessage"].value;
  const fterminos = form.elements["fterminos"].checked;
  const fconsentimiento = form.elements["fconsentimiento"].checked;

  // Validación de campos individuales con alertas específicas
  if (!fname) {
    event.preventDefault();
    alert("Por favor, ingrese su nombre.");
  } else if (!flastname) {
    event.preventDefault();
    alert("Por favor, ingrese su apellido.");
  } else if (!femail) {
    event.preventDefault();
    alert("Por favor, ingrese su correo electrónico.");
  } else if (!validateEmail(femail)) {
    event.preventDefault();
    alert("Por favor, ingrese un correo válido.");
  } else if (!fdistrito) {
    event.preventDefault();
    alert("Por favor, seleccione un distrito.");
  } else if (!fsex) {
    event.preventDefault();
    alert("Por favor, seleccione su sexo.");
  } else if (!fmessage) {
    event.preventDefault();
    alert("Por favor, ingrese un mensaje.");
  } else if (!fterminos) {
    event.preventDefault();
    alert("Debe aceptar los términos y condiciones del servicio.");
  } else if (!fconsentimiento) {
    event.preventDefault();
    alert("Debe aceptar a otorgo mi consentimiento.");
  }
});

//CREAR FUNCION validateEmail
function validateEmail(femail) {
  const re = /^[a-zA-Z0-9._]+@[a-zA-Z0-9]+\.[a-zA-Z]/;
  return re.test(String(femail).toLowerCase());
}
