#Include "./programação.ahk"
#Include "./investimentos.ahk"
#Include "./musica.ahk"
#Include "./pessoal.ahk"
#Include "./estudos.ahk"
#Include "./medicina.ahk"


printArray(array) {
    arrayTemp := ""
    for item in array {
        arrayTemp := arrayTemp . "`n`n" . item . " - Índice: " . A_Index
    }

    MsgBox(arrayTemp)
}


arrayTemp := []
getAtalhosNotion() {
    global
    valoresColunaA := getManyExcelValues("C:\Users\ext.mchoratto\Documents\AtalhosTecladoEVsCode\_Arquivos\notion-links.xlsx", 1, "A")
    valoresColunaB := getManyExcelValues("C:\Users\ext.mchoratto\Documents\AtalhosTecladoEVsCode\_Arquivos\notion-links.xlsx", 1, "B")
    valoresColunas := []

    for linha in valoresColunaA {
        valoresColunas.Push([valoresColunaA.Get(A_Index), valoresColunaB.Get(A_Index)])
    }
    for linha in valoresColunaA {
        arrayTemp.Push(valoresColunaA.Get(A_Index) . " || " . valoresColunaB.Get(A_Index))
    }

    for linha in arrayTemp {
        arrayzin := StrSplit(linha, " || ")
        Hotstring("::" . arrayzin.Get(1), funcao.Bind(arrayzin.Get(2)))
        funcao(urlDoAtalho, thisHotkey) {
            abrir_site(urlDoAtalho)
        }
    }
}

getAtalhosNotion()