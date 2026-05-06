*** Settings ***
Library     SeleniumLibrary
Library     ../../libraries/data_manager.py
Resource    ../../variables/global_variables.robot
Resource    ../../resources/pages/login_page.robot

Suite Setup       Abrir Navegador En Aplicacion
Suite Teardown    Cerrar Navegador

*** Test Cases ***
Login Exitoso En Demo Applitools
    ${datos}=       Get Login Data    ${COUNTRY}    ${ENVIRONMENT}
    Ingresar Usuario       ${datos}[username]
    Ingresar Password      ${datos}[password]
    Presionar Boton Sign In
    Validar Dashboard