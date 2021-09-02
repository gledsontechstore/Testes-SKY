*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${URL}           https://www.sky.com.br/
${BROWSER}       chrome


*** Keywords ***
Dado que acesso a página principal da sky
    Open browser    https://www.sky.com.br/     chrome
    maximize browser window
   
E fecho a propaganda inicial
    Click Button            class=close

E aceita os cookies
    Click Element           css=#wrap-aviso-cookie > div.container > div > div > div > div.col-md-2.col-sm-3.col-xs-12.hidden-xs > div > div > button
    
Quando acesso a aba programação
    Click Element           xpath=//*[@id="main-menu"]/div[2]/div[2]/ul[1]/li[3]/a/strong

E seleciono a lista de canais
    Click Element           class=title-container
 
E busco por uma programação
    Input Text              id=searchChannel        DISCOVERY KIDS

Então posso ver o canal escolhido na tela   
    Wait For Condition	    return document.title == "Lista de Canais Completa da SKY | SKY"
    Sleep                   5
    close browser   