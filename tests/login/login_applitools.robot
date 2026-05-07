*** Settings ***
Library     SeleniumLibrary
Library     ../../libraries/data_manager.py
Resource    ../../variables/global_variables.robot
Resource    ../../resources/pages/login_page.robot
Resource    ../../resources/keywords/common_keywords.robot

Suite Setup       Abrir Navegador En Aplicacion
Suite Teardown    Cerrar Navegador
Test Teardown     Capturar Evidencia Si Falla

*** Test Cases ***
Login Exitoso En Demo Applitools
    Imprimir Diagnostico Navegador
    ${datos}=       Get Login Data    ${COUNTRY}    ${ENVIRONMENT}
    Ingresar Usuario       ${datos}[username]
    Ingresar Password      ${datos}[password]
    Presionar Boton Sign In
    Validar Dashboard