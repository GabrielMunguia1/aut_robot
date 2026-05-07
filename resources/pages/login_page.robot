*** Settings ***
Library    SeleniumLibrary
Resource   ../locators/login_locators.robot
Resource   ../keywords/common_keywords.robot

*** Keywords ***
Ingresar Usuario
    [Arguments]    ${usuario}
    Wait Until Page Contains Element    ${INPUT_USERNAME}    30s
    Wait Until Element Is Visible       ${INPUT_USERNAME}    30s
    Input Text    ${INPUT_USERNAME}    ${usuario}

Ingresar Password
    [Arguments]    ${password}
    Wait Until Page Contains Element    ${INPUT_PASSWORD}    30s
    Wait Until Element Is Visible       ${INPUT_PASSWORD}    30s
    Input Text    ${INPUT_PASSWORD}    ${password}

Presionar Boton Sign In
    Wait Until Element Is Visible    ${BTN_SIGN_IN}
    Click Element    ${BTN_SIGN_IN}

Validar Dashboard
    Wait Until Page Contains Element    ${DASHBOARD_TITLE}
    Capturar Evidencia    login_exitoso