Feature: Register

@Test
  Scenario: Verificar elementos en la pagina de registro
Given estoy en la pagina de registro
Then deberia ver el campo de nombre con el valor inicial vacio
And deberia ver el campo de correo electronico con el valor inicial vacio
And deberia ver el campo de contrasenia con el valor inicial vacio y caracteres enmascarados
And deberia ver el boton de registro
