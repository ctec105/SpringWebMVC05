# SpringWebMVC05: Validación de formularios

En esta clase, aprenderemos a validar formularios.
Usaremos la clase org.springframework.validation.Validator con sus métodos supports y validate.
Usaremos el objeto ValidationUtils.rejectIfEmptyOrWhitespace y errors.rejectValue para configurar las validaciones y personalizar los mensajes de error.
Desde el controlador, usaremos los objetos BindingResult con su método hasErrors.
Nos apoyaremos en las anotaciones ModelAttribute, RequestMapping y Controller para darle la información necesaria al framework.
Crearemos un campo de tipo form:select el cuál lo poblaremos desde un objeto java.util.Map.
Usaremos bootstrap para darle diseño a las vistas, usando las clases container, row, alert alert-danger.

![](https://raw.githubusercontent.com/ctec105/SpringWebMVC05/master/image.png)

# Herramientas:
- NetBeans IDE 8.0.2
- GlassFish Server 4.1
- Spring Framework 4.0.1
- JSTL 1.2.2

# Pasos
- Abrir el NetBeans
- Importar el proyecto (*File/Open Project*)
- Ejecutar el proyecto (*Clic derecho/Run*)
