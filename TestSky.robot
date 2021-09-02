*** Settings ***
Library          SeleniumLibrary
Resource         resource.robot
# Test Setup       Abrir Navegador
# Test Teardown    Fechar Navegador


*** Test Cases ***
Cenário 01: automação site da sky
    Dado que acesso a página principal da sky
    E fecho a propaganda inicial
    E aceita os cookies
    Quando acesso a aba programação
    E seleciono a lista de canais
    E busco por uma programação
    Então posso ver o canal escolhido na tela
    
