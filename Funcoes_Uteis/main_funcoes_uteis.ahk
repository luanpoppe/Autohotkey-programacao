#Include "../configuracoes.ahk"

#Include "./v1-to-v2.ahk"

#HotIf

colar_texto(texto) {
    global
    clipAntigo := A_Clipboard
    A_Clipboard := texto
    Send(ctrl("v"))
    A_Clipboard := clipAntigo
}

repetirComando(qtdRepeticoes, stringTecla) {
    Loop qtdRepeticoes {
        Send(stringTecla)
    }
}

ctrl(letra) {
    return "{Ctrl down}" . letra . "{Ctrl up}"
}
winButton(letra) {
    return "{LWin down}" . letra . "{LWin up}"
}
ctrlShift(letra) {
    return "{Shift down}{Ctrl down}" . letra . "{Ctrl up}{Shift up}"
}
alt(letra) {
    return "{alt down}" . letra . "{alt up}"
}
altShift(letra) {
    return "{alt down}{shift down}" . letra . "{shift up}{alt up}"
}
shift(letra) {
    return "{Shift Down}{" . letra . " down}{Shift up}{" . letra . " Up}"
}
pressKey(key) {
    return "{" . key . " down}{" . key . " up}"
}

ctrl_left := ctrl("left")
ctrl_right := ctrl("right")
ctrl_down := ctrl("down")
ctrl_up := ctrl("up")
ctrl_tab := ctrl("Tab")
ctrl_home := ctrl("Home")
ctrl_enter := ctrl("Enter")
ctrl_backspace := ctrl("{Backspace}")
ctrl_shift_left := ctrlShift("{left}")
ctrl_shift_tab := ctrlShift("{Tab}")
ctrl_shift_right := ctrlShift("{Right}")
ctrl_shift_down := ctrlShift("{down}")
ctrl_shift_up := ctrlShift("{up}")
left_arrow := pressKey("left")
right_arrow := pressKey("right")
down_arrow := pressKey("down")
up_arrow := pressKey("up")
Enter_key := pressKey("Enter")
Delete_key := pressKey("Delete")
shift_right := shift("{right}")
shift_left := shift("{left}")
alt_tab := alt("{tab}")
alt_enter := alt("{enter}")
alt_shift_down := altShift("{down}")
alt_shift_up := altShift("{up}")
alt_shift_right := altShift("{right}")
alt_shift_left := altShift("{left}")
windows_r := winButton("r")

::aSave1:: {
    global
    Send(ctrl("c"))
    save1 := A_Clipboard
}
::aLoad1:: {
    global
    A_Clipboard := save1
    Send(ctrl("v"))
}
::aSave2:: {
    global
    Send(ctrl("c"))
    save2 := A_Clipboard
}
::aLoad2:: {
    global
    A_Clipboard := save2
    Send(ctrl("v"))
}
::aSave3:: {
    global
    Send(ctrl("c"))
    save3 := A_Clipboard
}
::aLoad3:: {
    global
    A_Clipboard := save3
    Send(ctrl("v"))
}
::aSave4:: {
    global
    Send(ctrl("c"))
    save4 := A_Clipboard
}
::aLoad4:: {
    global
    A_Clipboard := save4
    Send(ctrl("v"))
}
::aSave5:: {
    global
    Send(ctrl("c"))
    save5 := A_Clipboard
}
::aLoad5:: {
    global
    A_Clipboard := save5
    Send(ctrl("v"))
}

savedClipboard := []
::seeClip:: {
    global
    variavelClip := ""
    for item in savedClipboard {
        variavelClip := variavelClip . " `n" . item
    }
    MsgBox("Itens na variável do clipboard: `n" variavelClip)
}

::resetClip:: {
    global
    savedClipboard := []
}

^#c:: {
    global
    savedClipboard := []
}

#c:: {
    Send(ctrl("c"))
    savedClipboard.Push(A_Clipboard)
    for item in savedClipboard {
        Hotstring("::acv" . A_index, funcao)
        funcao(thisHotkey) {
            indexAtual := SubStr(thisHotkey, -1)
            colar_texto(savedClipboard[(indexAtual)])
        }
    }
}
