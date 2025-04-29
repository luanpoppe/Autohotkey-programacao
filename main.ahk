#Requires AutoHotkey >=v2.0
#Include "./env.ahk"
#Include "./configuracoes.ahk"

#Include "./Code/_modulo.ahk"
#Include "./Atalhos_Notion/_modulo.ahk"
#Include "./Funcoes_Uteis/modulo.ahk"


::cJira:: { 
        colar_texto("https://azuredevops.pine.com/Varejo/Consignado%20P%C3%BAblico/_boards/board/t/Consignado%20P%C3%BAblico%20Team/Backlog%20items")
        Send("{Enter}")
    }

    ::aCardBug::
    ::aCardsBug::
    ::aBugCard::
    ::aBugCards::
    ::aCBug::
    ::aCBugs::
    ::aBCard::
    ::aBCards:: {
        texto :=
            (
                "** Descrição: 

nº da inscrição: 
URL da request:

Passo a passo: 

Resultado esperado: 

Resultado obtido: **"
            )
        colar_texto(texto)
}
