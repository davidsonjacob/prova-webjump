*** Settings ***
Resource        basic.robot

Test Setup          Abrir Browser          
Test Teardown       Fechar Browser


*** Test Cases ***
Deve clicar nos botões do painel Buttons    
    Click Button                                id:btn_one
    Click Button                                id:btn_two
    Click Button                                id:btn_link

    Page Should Not Contain Radio Button        id:btn_one
    Page Should Not Contain Radio Button        id:btn_two
    Page Should Not Contain Radio Button        id:btn_link

Deve clicar botões do painel IFrame Buttons
    Click Button                                xpath=//*[@id="btn_one"]
    Click Button                                xpath=//*[@id="btn_two"]
    Click Button                                xpath=//*[@id="btn_link"]

    Page Should Not Contain Radio Button        xpath=//*[@id="btn_one"]
    Page Should Not Contain Radio Button        xpath=//*[@id="btn_two"]
    Page Should Not Contain Radio Button        xpath=//*[@id="btn_link"]
   
Deve executar várias ações
    Input Text                                  id:first_name       Teste 1234
    Click Button                                id:btn_one
    Select Checkbox                             opt_three
    Select From List By Value                   id:select_box       option_two

   Page Should Contain Image                    class:img-responsive-center-block

    

