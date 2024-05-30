*** Settings ***
Resource    ../base.robot
Library    XML

*** Variables ***
${BOTAO_PIX}            xpath=//android.widget.ScrollView/android.widget.HorizontalScrollView[1]/android.widget.Button[1]
${BOTAO_PAGAR}            xpath=//android.widget.ScrollView/android.widget.HorizontalScrollView[1]/android.widget.Button[2]
${BOTAO_TRANSFERIR}            xpath=//android.widget.ScrollView/android.widget.HorizontalScrollView[1]/android.widget.Button[3]
${BOTAO_DEPOSITAR}            xpath=//android.widget.ScrollView/android.widget.HorizontalScrollView[1]/android.widget.Button[4]
${BOTAO_EMPRESTIMO}            xpath=//android.widget.ScrollView/android.widget.HorizontalScrollView[1]/android.widget.Button[5]
${BOTAO_RECARGA}            xpath=//android.widget.ScrollView/android.widget.HorizontalScrollView[1]/android.widget.Button[2]
${BOTAO_COBRAR}            xpath=//android.widget.ScrollView/android.widget.HorizontalScrollView[1]/android.widget.Button[3]
${BOTAO_DOACAO}            xpath=//android.widget.ScrollView/android.widget.HorizontalScrollView[1]/android.widget.Button[4]
${BOTAO_ATALHOS}            xpath=//android.widget.ScrollView/android.widget.HorizontalScrollView[1]/android.widget.Button[5]
${BOTAO_CARTOES}            xpath=//android.view.View[@content-desc="Meus cartões"]
${ANUNCIO_EMPRESTIMO}            xpath=//android.view.View[@content-desc="Você tem R$ 10.000,00 disponíveis para empréstimo."]
${ANUNCIO_PLANOS}            xpath=//android.view.View[@content-desc="Conquiste planos futuros: conheça as opções para guardar dinheiro."]
${FATURA_CARTAO}            xpath=//android.view.View[@content-desc="Cartão de Crédito Fatura atual R$ 780,72 Limite disponível R$ 806,78"]
${EMPRESTIMO}            xpath=//android.view.View[@content-desc="Empréstimo Valor disponível de até R$ 10.000,00"]
${INVESTIMENTOS}            xpath=//android.view.View[@content-desc="Investimentos A revolução roxa começou. Invista de maneira simples, sem burocracia e 100% digital."]
${SEGURO}            xpath=//android.view.View[@content-desc="Seguro de vida Conheça Nubank Vida: um seguro simples e que cabe no bolso."]
${DESCUBRA_WHATSAPP}            xpath=//android.view.View[@content-desc="WhatsApp Novo Pagamentos seguros, rápidos e sem tarifa. A experiência Nubank sem nem sair da conversa."]
${DESCUBRA_INDIQUE}            xpath=//android.view.View[@content-desc="Indique seus amigos Mostre aos seus amigos como é fácil ter uma vida sem burocracia."]

*** Keywords ***
Aguarda o elemento carregar e verifica o texto
    [Arguments]    ${elemento}    ${content-desc}
    Wait Until Element Is Visible    ${elemento}
    Element Should Be Visible    ${elemento}   ${content-desc}

Verifica botão Pix
    Element Should Be Visible    ${BOTAO_PIX}

Verifica botão Pagar
    Element Should Be Visible    ${BOTAO_PAGAR}

Verifica botão Transferir 
    Element Should Be Visible    ${BOTAO_TRANSFERIR}

Verifica botão Depositar 
    Element Should Be Visible    ${BOTAO_DEPOSITAR}

Verifica botão Empréstimo 
    Element Should Be Visible    ${BOTAO_EMPRESTIMO}

Verifica botão Recarga 
    Swipe By Percent    90    40    0    40
    Element Should Be Visible    ${BOTAO_RECARGA}

Verifica botão Cobrar
    Swipe By Percent    90    40    0    40
    Element Should Be Visible    ${BOTAO_COBRAR}

Verifica botão Doação
    Swipe By Percent    90    40    0    40
    Element Should Be Visible    ${BOTAO_DOACAO}

Verifica botão Atalhos
    Swipe By Percent    90    40    0    40
    Element Should Be Visible     ${BOTAO_ATALHOS}

Verificar botão Meus Cartões
    Element Should Be Visible    ${BOTAO_CARTOES}

Verifica anúncio de empréstimo 
    Element Should Be Visible    ${ANUNCIO_EMPRESTIMO}

Verifica anúncio de planos
    Element Should Be Visible    ${ANUNCIO_PLANOS}

Verifica empréstimo
    Element Should Be Visible    ${EMPRESTIMO}

Verifica Investimentos
    Element Should Be Visible    ${INVESTIMENTOS}

Verifica seguros
    Element Should Be Visible    ${SEGURO}


