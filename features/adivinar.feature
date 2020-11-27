Feature: El usuario adivina

  El usuario adivina la palabra

  Scenario: El usuario puede ingresar 1 letra y el programa le dice si está en la palabra
  Given inicio la aplicacion
  When la letra es "a"
  Then el mensaje es "Sí está en la palabra"

  Scenario: El usuario puede ingresar 1 letra que no es parte de la palabra y el programa le dice no está en la palabra
  Given inicio la aplicacion
  When la letra es "x"
  Then el mensaje es "No está en la palabra"

  Scenario: El usuario puede ingresar 1 letra, si no acierta, el programa suma un error
  Given inicio la aplicacion
  When la letra es "x"
  Then el mensaje es "No está en la palabra"
  And errores indica "1"

  Scenario: El usuario hace 2 intentos fallidos, el programa muestra 2 errores
  Given inicio la aplicacion
  When la letra es "x"
  And la letra es "z"
  Then el mensaje es "No está en la palabra"
  And errores indica "2"

  Scenario: El usuario hace 5 intentos fallidos, pierde el juego
  Given inicio la aplicacion
  When la letra es "x"
  And la letra es "z"
  And la letra es "z"
  And la letra es "b"
  And la letra es "z"
  Then el mensaje es "Game Over"
  And errores indica "5"

  Scenario: El usuario acierta un intento, se completa con esa letra la palabra
  Given inicio la aplicacion
  When la letra es "a"
  Then el mensaje es "Sí está en la palabra"
  And se muestra la palabra "a*a"

  Scenario: El usuario acierta un intento, se completa con esa letra la palabra
  Given inicio la aplicacion
  When la letra es "n"
  Then el mensaje es "Sí está en la palabra"
  And se muestra la palabra "*n*"

  Scenario: El usuario acierta la palabra
  Given inicio la aplicacion
  When la letra es "n"
  And la letra es "a"
  Then el mensaje es "Adivinaste la palabra secreta"
  And se muestra la palabra "ana"