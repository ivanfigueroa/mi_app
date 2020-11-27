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