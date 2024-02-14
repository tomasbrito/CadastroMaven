Feature: RegisterTwo

@Test
Scenario: Visualizar error en email
Given estoy en la pagina de registro
When ingreso "Tomas Brito" en el campo nombre
And ingreso "tomas.gmail.com" en el campo email
And ingreso "12345678" en el campo contrasenia
And hago clic en el boton 'cadastrar'
Then deberia ver el error "Por favor, insira um e-mail válido." en el campo email