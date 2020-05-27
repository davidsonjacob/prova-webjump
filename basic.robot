*** Settings ***
Library     SeleniumLibrary

*** Keywords ***
Abrir Browser
    Open Browser        https://wejump-automation-test.github.io/qa-test/       chrome

Fechar Browser
    Capture Page Screenshot
    Close Browser

