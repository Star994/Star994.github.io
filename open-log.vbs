Dim MZ , BtnCode
Set WshShell = WScript.CreateObject("WScript.Shell")
Set MZ       = WScript.CreateObject("WScript.shell")
'Set BtnCode  = WScript.CreateObject("WScript.shell")
BtnCode = WshShell.Popup("  打开2023年年志回顾一下今天，计划明天吧", 10, "2023年年志记录：", 64 + 1)

'MsgBox BtnCode 'debug用
Select Case BtnCode
	Rem case1 点击“是“执行
	Case 1     MZ.run "D:\工作桌面\2023计划\wkcp\2023年年志.xlsm",3 'WScript.Echo "case6"'点yes执行
	Rem case2 点击”否“执行
	Case 2		'什么都不做，退出循环不打扰。点否定时执行
	Rem case-1 超时不点击执行
	Case -1     'WScript.Echo "case-1" '超过btncode等待时间执行的命令
End Select
'MZ.run "D:\工作桌面\2023计划\wkcp\2023年年志.xlsm",3