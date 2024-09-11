coordmode, Mouse, Screen

^D::
{
   MouseGetPos, currentCursorX, currentCursorY 
   Send {LControl Down}	
   Click
   Send {LControl Up}
   TradeDiv(600,654,733,744) ; Click on Trade
   CollectDiv(602,702,630,645)  ; CTRL Click result back to inventory
   MouseBack(currentCursorX, currentCursorY) ; Move mouse back
}
return

TradeDiv(minX,maxX,minY,maxY,speedMin:=3,speedMax:=5) {
   Random, rndX, %minX%, %maxX%
   Random, rndY, %minY%, %maxY%
   Random, MouseSpeed, %speedMin%, %speedMax%
   BlockInput, On
   MouseMove,  %rndX%, %rndY%, %MouseSpeed%
   Send {LControl Down}
   Click
   Send {LControl Up}
   BlockInput, off
}

CollectDiv(minX,maxX,minY,maxY,speedMin:=3,speedMax:=5) {
   Random, rndX, %minX%, %maxX%
   Random, rndY, %minY%, %maxY%
   Random, MouseSpeed, %speedMin%, %speedMax%
   BlockInput, On
   MouseMove,  %rndX%, %rndY%, %MouseSpeed%
   Send {LControl Down}
   Click
   Send {LControl Up}
   BlockInput, off
}

MouseBack(mouseBackX, mouseBackY) {
   Random, MouseSpeed, 3, 5
   MouseMove,  %mouseBackX%, %mouseBackY%, %MouseSpeed%
}
