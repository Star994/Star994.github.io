Dim MZ , BtnCode
Set WshShell = WScript.CreateObject("WScript.Shell")
Set MZ       = WScript.CreateObject("WScript.shell")
'Set BtnCode  = WScript.CreateObject("WScript.shell")
BtnCode = WshShell.Popup("  ��2023����־�ع�һ�½��죬�ƻ������", 10, "2023����־��¼��", 64 + 1)

'MsgBox BtnCode 'debug��
Select Case BtnCode
	Rem case1 ������ǡ�ִ��
	Case 1     MZ.run "D:\��������\2023�ƻ�\wkcp\2023����־.xlsm",3 'WScript.Echo "case6"'��yesִ��
	Rem case2 �������ִ��
	Case 2		'ʲô���������˳�ѭ�������š����ʱִ��
	Rem case-1 ��ʱ�����ִ��
	Case -1     'WScript.Echo "case-1" '����btncode�ȴ�ʱ��ִ�е�����
End Select
'MZ.run "D:\��������\2023�ƻ�\wkcp\2023����־.xlsm",3