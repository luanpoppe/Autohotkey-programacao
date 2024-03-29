﻿#Requires AutoHotkey >=v2.0
#Include "./configuracoes.ahk"

;; Comandos Git:
::aGitPODev::
    ::aGitPOD:: {
    colar_texto("git pull origin developer")
}

::aGitPODRebase::
    ::aGitPODR::
    ::aGitPROD:: {
    colar_texto("git pull --rebase origin developer")
}

;; Comandos Javascript
::aCTrace:: {
    actualPrint := A_Clipboard
    pasteContent := "console.trace()"
    A_Clipboard := pasteContent
    Send("{CtrlDown}v{CtrlUp}")
    A_Clipboard := actualPrint
}

; Escrever "console.log" fácil no PC --> aCLog 
::aCLog::{
    actualPrint := A_Clipboard
    pasteContent := "console.log()"
    A_Clipboard := pasteContent
    Send("{CtrlDown}v{CtrlUp}")
    Send(left_arrow)
    A_Clipboard := actualPrint
}

::aCLogV:: {
    actualPrint := A_Clipboard
    pasteContent := "console.log('" . actualPrint . "', " . actualPrint . ")"
    A_Clipboard := pasteContent
    Send("{CtrlDown}v{CtrlUp}")
    A_Clipboard := actualPrint
}

::aCTableV::
    ::aCTabV:: {
    actualPrint := A_Clipboard
    pasteContent := "console.table('" . actualPrint . "', " . actualPrint . ")"
    A_Clipboard := pasteContent
    Send("{CtrlDown}v{CtrlUp}")
    A_Clipboard := actualPrint
}

::aCTable::
    ::aCTab:: {
    actualPrint := A_Clipboard
    pasteContent := "console.table()"
    A_Clipboard := pasteContent
    Send("{CtrlDown}v{CtrlUp}")
    A_Clipboard := actualPrint
}

::aCGroup::
    ::aCGrupo::
    ::aCGr:: {
    actualPrint := A_Clipboard
    pasteContent := "console.group('Grupo de Console')`n`nconsole.groupEnd()"
    A_Clipboard := pasteContent
    Send("{CtrlDown}v{CtrlUp}")
    A_Clipboard := actualPrint
}

::aCGroupV::
    ::aCGrupoV::
    ::aCGrV:: {
    actualPrint := A_Clipboard
    pasteContent := "console.group('Grupo de Console')`nconsole.log('" . actualPrint . "', " . actualPrint . ")`nconsole.groupEnd()"
    A_Clipboard := pasteContent
    Send("{CtrlDown}v{CtrlUp}")
    A_Clipboard := actualPrint
}

::aCCl::
    ::aCClear:: {
    actualPrint := A_Clipboard
    pasteContent := "console.clear()"
    A_Clipboard := pasteContent
    Send("{CtrlDown}v{CtrlUp}")
    A_Clipboard := actualPrint
}

::aClob:: {
    SetKeyDelay(50)
    actualPrint := A_Clipboard
    actualPrintFormatted := StrReplace(actualPrint, ".", "_")
    actualPrintFormatted := StrReplace(actualPrintFormatted, "()", "")
    texto := "console.log({ `n" 
    colar_texto(texto)
    Send("{Tab}")
    texto := actualPrintFormatted . ": " . actualPrint . "," . "`n})"
    colar_texto(texto)
}

::aClobV:: {
    actualPrint := A_Clipboard
    actualPrintFormatted := StrReplace(actualPrint, ".", "_")
    actualPrintFormatted := StrReplace(actualPrintFormatted, "()", "")
    colar_texto(actualPrintFormatted . ": " . actualPrint . "," . "`n")
    Send("{Tab}")
}

::aJsMap:: {
    actualPrint := A_Clipboard
    input := InputBox("Digite o nome do item", "Map: ", unset, "item")
    pasteContent := "map((" . input.Value . ") => {})"
    A_Clipboard := pasteContent
    Send("{CtrlDown}v{CtrlUp}")
    Send("{Left}{Left}{Enter}")
    A_Clipboard := 'return '
    Send("{CtrlDown}v{CtrlUp}")
    A_Clipboard := actualPrint
}

::aJsFilter::  ; aJsFilt
::aJsFilt:: {
    actualPrint := A_Clipboard
    input := InputBox("Digite o nome do item", "Filter: ", unset, "item")
    pasteContent := "filter((" . input.Value . ") => {})"
    A_Clipboard := pasteContent
    Send("{CtrlDown}v{CtrlUp}")
    Send("{Left}{Left}{Enter}")
    A_Clipboard := 'return '
    Send("{CtrlDown}v{CtrlUp}")
    A_Clipboard := actualPrint
}

::aJsForEach::  ; aJsFEach
::aJsFEach:: {
    actualPrint := A_Clipboard
    input := InputBox("Digite o nome do item", "ForEach: ", unset, "item")
    pasteContent := "forEach((" . input.Value . ") => {})"
    A_Clipboard := pasteContent
    Send("{CtrlDown}v{CtrlUp}")
    Send("{Left}{Left}{Enter}")
    A_Clipboard := actualPrint
}

::ajsNext:: {
    actualPrint := A_Clipboard
    input := InputBox("Digite o nome do parâmetro", "Next: ", unset, "response")
    pasteContent := "{}"
    A_Clipboard := pasteContent
    Send("{CtrlDown}v{CtrlUp}")
    Send("{Left}{Enter}")

    pasteContent := "next: ((" . input.Value . ") => {})"
    A_Clipboard := pasteContent
    Send("{CtrlDown}v{CtrlUp}")
    Send("{Left}{Left}{Enter}")
    pasteContent := "console.log('" . input.Value . "', " . input.Value . ")"
    A_Clipboard := pasteContent
    Send("{CtrlDown}v{CtrlUp}")

    A_Clipboard := actualPrint
}

::aJsSubscribe::
::aJsSubs::
::aJsSub:: {
    actualPrint := A_Clipboard
    input := InputBox("Digite o nome do parâmetro", "Next: ", unset, "response")
    pasteContent := "subscribe({})"
    A_Clipboard := pasteContent
    Send("{CtrlDown}v{CtrlUp}")
    Send("{Left}{Left}{Enter}")

    pasteContent := "next: ((" . input.Value . ") => {})"
    A_Clipboard := pasteContent
    Send("{CtrlDown}v{CtrlUp}")
    Send("{Left}{Left}{Enter}")
    pasteContent := "console.log('" . input.Value . "', " . input.Value . ")"
    A_Clipboard := pasteContent
    Send("{CtrlDown}v{CtrlUp}")

    A_Clipboard := actualPrint
}

::aJServer:: {
    actualPrint := A_Clipboard
    pasteContent := "json-server --watch db.json"
    A_Clipboard := pasteContent
    Send("{CtrlDown}v{CtrlUp}")
}

::aJsSetInterval::
    ::aJsSetInt::
    ::aJsSInterval::
    ::aJsSInt:: {
        actualPrint := A_Clipboard
    pasteContent := "
    (
        setInterval(() => {
    
        }, 1000);
    )"
    A_Clipboard := pasteContent
    Send("{CtrlDown}v{CtrlUp}")
    Send("{Up}")
    Send("{Tab}")
    }

::aJsSetTimeout::
    ::aJsSTimeout::
    ::aJsSetTOut::
    ::aJsSTout:: {
        actualPrint := A_Clipboard
    pasteContent := "
    (
        setTimeout(() => {
    
        }, 1000);
    )"
    A_Clipboard := pasteContent
    Send("{CtrlDown}v{CtrlUp}")
    Send("{Up}")
    Send("{Tab}")
    }

;

::aJSArrow:: ; aArrowJS | aJSAF | aAFJS
    ::aArrowJS::
    ::aJSAF::
    ::aAFJS:: {
        actualPrint := A_Clipboard
        pasteContent := "() => {}"
        A_Clipboard := pasteContent
        Send("{CtrlDown}v{CtrlUp}")
        A_Clipboard := actualPrint
}

