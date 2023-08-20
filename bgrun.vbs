Option Explicit

Dim WshShell
Set WshShell = WScript.CreateObject("WScript.Shell")

Do
	Set WshShell = CreateObject("WScript.Shell") 
	WshShell.Run "tsk_acrotray.bat", 0
	MsgBox "here."
	WScript.Sleep 1000*60
Loop