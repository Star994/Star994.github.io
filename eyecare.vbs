' eyecare-script������ʾ����
' ���ߣ�ף����
' ���ڣ�2023��5��7��

option explicit
	'Qt:quit
	Dim WshShell, BtnCode,Qt
	Set WshShell = WScript.CreateObject("WScript.Shell")
	dim t '��ʱ��ʱ�䣬�ȴ�ʱ�䣨��λ���룩
	'dim yesno 'ѡ��򷵻�ֵ
	'dim Prompt_content=string
	'string="care your eyes,continue to mind you?"

	t=45*60 '�´�������Ϣ��ʱ��

	'do until yesno=7 'ֱ��yesno=7���˳�ѭ��
	do until BtnCode=7 'ֱ�����񣬲��������˳���ʾ
		WScript.sleep 1000*t 'ÿ�����Ѽ��ʱ��
		'yesno=MsgBox ("    ע����Ϣ,ż����������,͸͸��,���ָ߶�רע��"&Chr(13)&"    ����ʲô�콵���ˣ�ֻ�зܶ���Ϣ��",68,"������ʾ")

		
		BtnCode = WshShell.Popup("ע����Ϣ,ż����������,͸͸��,���ָ߶�רע��"&Chr(13)&"    ����ʲô�콵���ˣ�ֻ�зܶ���Ϣ��", 2, "������ʾ", 4 + 32 + 4096)
		'������Ϣ�����ڱ���2s���û�ѡ���Ƿ�������ѣ�2s��Ĭ�ϼ������ѣ�ѡ������ʾ�˳����ٴ��š�
		
		Select Case BtnCode
		   case 6      'WScript.Echo "case6"'��yesִ��
		   case 7		'ʲô���������˳�ѭ�������š�
		   case -1     'WScript.Echo "case-1" '����btncode�ȴ�ʱ��ִ�е�����
		End Select

	
	loop
'MsgBox "    ����������"&Chr(13)&"    �Ѿ��˳�������ʾ��",64,"������ʾ"
Qt = WshShell.Popup("������", 1, "��ʾ", 0) '��ʾ�Ѿ��˳����������ˡ�
















































' yesno=MsgBox("Prompt_content (Chr(13)) & Chr(10) abc",vbYesNo,"Window_title")
' ############ѡ�����###########
			' if yesno=7 then
			' 	end if
				
			' 	exit loop
			' else
			' 	msgbox "Goodbye"
			' end If
'#########ѭ�����##########
' do while i < 10
'   document.write(i & "<br />")
'   i=i+1
' loop

' option explicit
' dim a
' a=0

' 	WScript.sleep 1000*2 '�ȴ�3�룬�״����У���ʼ��ʱ
' for a=0 to 2    '0-2��0��1��2 ���Σ�����
' 	MsgBox "      ע����Ϣ������רע�����������۾�~       ���ͣ�", 64, "��ܰ��ʾ"
' 	WScript.sleep 1000*2 '�ȴ�3��
' next


' sub test()
' Dim i As Integer
' 	i = MsgBox("���ڴ򿪰ٶ�", vbYesNo, "��ʾ")
' 	If i = vbYes Then Text1.Text = 100
' 	If i = vbNo Then Text1.Text = 200
' End Sub

' ������÷�
' MsgBox ��������ʾһ����Ϣ�򣬵ȴ��û����ĳ����ť��Ȼ�󷵻�ָʾ�������ť��ֵ��

' MsgBox �����ɷ��������ֵ��

' 1 = vbOK - ȷ����ť��������
' 2 = vbCancel - ȡ����ť��������
' 3 = vbAbort - ��ֹ��ť��������
' 4 = vbRetry - ���԰�ť��������
' 5 = vbIgnore - ���԰�ť��������
' 6 = vbYes - �ǰ�ť��������
' 7 = vbNo - ��ť��������
' ע�ͣ��� helpfile �� context ���������涨���û��ɰ� F1 �����鿴������

' ��ʾ������� InputBox ������

' �﷨
' MsgBox(prompt[,buttons][,title][,helpfile,context])
' ����	����
' prompt	����ġ���Ϊ��Ϣ��ʾ�ڶԻ����е��ַ������ʽ��prompt ����󳤶ȴ�Լ�� 1024 ���ַ�����ȡ������ʹ�õ��ַ��Ŀ�ȡ���� prompt �а�������У�����ڸ���֮���ûس��� (Chr(13))�����з� (Chr(10)) ��س����з������ (Chr(13) & Chr(10)) �ָ����С�
' buttons	
' ��ֵ���ʽ���Ǳ�ʾָ����ʾ��ť����Ŀ�����͡�ʹ�õ�ͼ����ʽ��Ĭ�ϰ�ť�ı�ʶ�Լ���Ϣ����ʽ����ֵ���ܺ͡����ʡ�ԣ��� buttons ��Ĭ��ֵΪ 0��

' button ��ȡֵ��

' 0 = vbOKOnly - ֻ��ʾȷ����ť��
' 1 = vbOKCancel - ��ʾȷ����ȡ����ť��
' 2 = vbAbortRetryIgnore - ��ʾ���������Ժͺ��԰�ť��
' 3 = vbYesNoCancel - ��ʾ�ǡ����ȡ����ť��
' 4 = vbYesNo - ��ʾ�Ǻͷ�ť��
' 5 = vbRetryCancel - ��ʾ���Ժ�ȡ����ť��
' 16 = vbCritical - ��ʾ�ٽ���Ϣͼ�ꡣ
' 32 = vbQuestion - ��ʾ�����ѯͼ�ꡣ
' 48 = vbExclamation - ��ʾ������Ϣͼ�ꡣ
' 64 = vbInformation - ��ʾ��Ϣ��Ϣͼ�ꡣ
' 0 = vbDefaultButton1 - ��һ����ťΪĬ�ϰ�ť��
' 256 = vbDefaultButton2 - �ڶ�����ťΪĬ�ϰ�ť��
' 512 = vbDefaultButton3 - ��������ťΪĬ�ϰ�ť��
' 768 = vbDefaultButton4 - ���ĸ���ťΪĬ�ϰ�ť��
' 0 = vbApplicationModal - Ӧ�ó���ģʽ���û�������Ӧ��Ϣ����ܼ����ڵ�ǰӦ�ó����й�����
' 4096 = vbSystemModal - ϵͳģʽ�����û���Ӧ��Ϣ��ǰ������Ӧ�ó��򶼱�����
' ��һ��ֵ (0 - 5) ���������Ի�������ʾ�İ�ť��������Ŀ���ڶ���ֵ (16, 32, 48, 64) ��������ͼ�����ʽ��������ֵ (0, 256, 512) ����ȷ��Ĭ�ϰ�ť����������ֵ (0, 4096) �������Ϣ�����ʽ���ڽ���Щ������������� buttons ����ֵʱ��ֻ�ܴ�ÿ��ֵ��ȡ��һ�����֡�

' title	��ʾ�ڶԻ���������е��ַ������ʽ�����ʡ�� title����Ӧ�ó����������ʾ�ڱ������С�
' helpfile	�ַ������ʽ�����ڱ�ʶΪ�Ի����ṩ��������ذ����İ����ļ���������ṩ helpfile��������ṩ context���� 16 λϵͳƽ̨�ϲ����á�
' context	��ֵ���ʽ�����ڱ�ʶ�ɰ����ļ�������ָ����ĳ����������������ı�š�������ṩ context��������ṩ helpfile���� 16 λϵͳƽ̨�ϲ����á�
' ʵ��
' dim answer
' answer=MsgBox("Hello everyone!",65,"Example")
' document.write(answer)