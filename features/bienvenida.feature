Feature: Bienvienido al Juego

  Se muestra el mensaje de bienvenida del Juego

  Scenario: Mensaje al iniciar
  When inicio la aplicacion
  Then el mensaje es "Adivina la palabra secreta"