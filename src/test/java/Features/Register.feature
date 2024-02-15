Feature: Register

@Smoke
  Scenario: Verificar elementos en la pagina de registro
Given estoy en la pagina de registro
Then deberia ver el campo de nombre con el valor inicial vacio
And deberia ver el campo de correo electronico con el valor inicial vacio
And deberia ver el campo de contrasenia con el valor inicial vacio y caracteres enmascarados
And deberia ver el boton de registro

  @Test
  Scenario: Visualizar error en campos vacios
    Given estoy en la pagina de registro
    When hago clic en el boton 'cadastrar'
    Then deberia ver los errores 'O campo Nome é obrigatório.', 'O campo E-mail é obrigatório.' y 'O campo Senha é obrigatório.' en los campos vacios


  @Test
  Scenario: Visualizar error en nombre
    Given estoy en la pagina de registro
    When ingreso "Tomas" en el campo nombre
    And ingreso "tomas@gmail.com" en el campo email
    And ingreso "12345678" en el campo contrasenia
    And hago clic en el boton 'cadastrar'
    Then deberia ver el error "Por favor, insira um nome completos." en el campo nombre
