*** Settings ***
Library    SeleniumLibrary
Resource   ../../variables/global_variables.robot

*** Keywords ***
Abrir Navegador En Aplicacion
    IF    '${BROWSER}' == 'headlesschrome'
        ${options}=    Evaluate    sys.modules['selenium.webdriver'].ChromeOptions()    sys, selenium.webdriver

        ${arg_headless}=        Set Variable    --headless=new
        ${arg_no_sandbox}=      Set Variable    --no-sandbox
        ${arg_dev_shm}=         Set Variable    --disable-dev-shm-usage
        ${arg_disable_gpu}=     Set Variable    --disable-gpu
        ${arg_window_size}=     Set Variable    --window-size=1920,1080

        Call Method    ${options}    add_argument    ${arg_headless}
        Call Method    ${options}    add_argument    ${arg_no_sandbox}
        Call Method    ${options}    add_argument    ${arg_dev_shm}
        Call Method    ${options}    add_argument    ${arg_disable_gpu}
        Call Method    ${options}    add_argument    ${arg_window_size}

        Open Browser    ${BASE_URL}    chrome    options=${options}
    ELSE
        Open Browser    ${BASE_URL}    ${BROWSER}
        Maximize Browser Window
    END
    Set Selenium Timeout    ${TIMEOUT}

Cerrar Navegador
    Close Browser

Capturar Evidencia
    [Arguments]    ${nombre_evidencia}
    Capture Page Screenshot    evidence/${nombre_evidencia}.png