' eyecare-script护眼提示程序
' 作者：祝光阳
' 日期：2023年5月7日

option explicit
	'Qt:quit
	Dim WshShell, BtnCode,Qt
	Set WshShell = WScript.CreateObject("WScript.Shell")
	dim t '计时器时间，等待时间（单位：秒）
	'dim yesno '选择框返回值
	'dim Prompt_content=string
	'string="care your eyes,continue to mind you?"

	t=45*60 '下次提醒休息的时间

	'do until yesno=7 '直到yesno=7才退出循环
	do until BtnCode=7 '直到按否，不想提醒退出提示
		WScript.sleep 1000*t '每次提醒间隔时间
		'yesno=MsgBox ("    注意休息,偶尔看看窗外,透透气,保持高度专注。"&Chr(13)&"    哪有什么天降鸿运，只有奋斗不息！",68,"健康提示")

		
		BtnCode = WshShell.Popup("注意休息,偶尔看看窗外,透透气,保持高度专注。"&Chr(13)&"    哪有什么天降鸿运，只有奋斗不息！", 2, "健康提示", 4 + 32 + 4096)
		'提醒休息，窗口保持2s供用户选择是否继续提醒，2s后默认继续提醒，选否则提示退出不再打扰。
		
		Select Case BtnCode
		   case 6      'WScript.Echo "case6"'点yes执行
		   case 7		'什么都不做，退出循环不打扰。
		   case -1     'WScript.Echo "case-1" '超过btncode等待时间执行的命令
		End Select

	
	loop
'MsgBox "    不打扰您啦"&Chr(13)&"    已经退出护眼提示。",64,"健康提示"
Qt = WshShell.Popup("不打扰", 1, "提示", 0) '提示已经退出，不打扰了。
















































' yesno=MsgBox("Prompt_content (Chr(13)) & Chr(10) abc",vbYesNo,"Window_title")
' ############选择语句###########
			' if yesno=7 then
			' 	end if
				
			' 	exit loop
			' else
			' 	msgbox "Goodbye"
			' end If
'#########循环语句##########
' do while i < 10
'   document.write(i & "<br />")
'   i=i+1
' loop

' option explicit
' dim a
' a=0

' 	WScript.sleep 1000*2 '等待3秒，首次运行，开始计时
' for a=0 to 2    '0-2是0、1、2 三次！！！
' 	MsgBox "      注意休息，提升专注能力，保护眼睛~       加油！", 64, "温馨提示"
' 	WScript.sleep 1000*2 '等待3秒
' next


' sub test()
' Dim i As Integer
' 	i = MsgBox("现在打开百度", vbYesNo, "提示")
' 	If i = vbYes Then Text1.Text = 100
' 	If i = vbNo Then Text1.Text = 200
' End Sub

' 定义和用法
' MsgBox 函数可显示一个消息框，等待用户点击某个按钮，然后返回指示被点击按钮的值。

' MsgBox 函数可返回下面的值：

' 1 = vbOK - 确定按钮被单击。
' 2 = vbCancel - 取消按钮被单击。
' 3 = vbAbort - 终止按钮被单击。
' 4 = vbRetry - 重试按钮被单击。
' 5 = vbIgnore - 忽略按钮被单击。
' 6 = vbYes - 是按钮被单击。
' 7 = vbNo - 否按钮被单击。
' 注释：当 helpfile 和 context 参数均被规定后，用户可按 F1 键来查看帮助。

' 提示：请参阅 InputBox 函数。

' 语法
' MsgBox(prompt[,buttons][,title][,helpfile,context])
' 参数	描述
' prompt	必需的。作为消息显示在对话框中的字符串表达式。prompt 的最大长度大约是 1024 个字符，这取决于所使用的字符的宽度。如果 prompt 中包含多个行，则可在各行之间用回车符 (Chr(13))、换行符 (Chr(10)) 或回车换行符的组合 (Chr(13) & Chr(10)) 分隔各行。
' buttons	
' 数值表达式，是表示指定显示按钮的数目和类型、使用的图标样式，默认按钮的标识以及消息框样式的数值的总和。如果省略，则 buttons 的默认值为 0。

' button 的取值：

' 0 = vbOKOnly - 只显示确定按钮。
' 1 = vbOKCancel - 显示确定和取消按钮。
' 2 = vbAbortRetryIgnore - 显示放弃、重试和忽略按钮。
' 3 = vbYesNoCancel - 显示是、否和取消按钮。
' 4 = vbYesNo - 显示是和否按钮。
' 5 = vbRetryCancel - 显示重试和取消按钮。
' 16 = vbCritical - 显示临界信息图标。
' 32 = vbQuestion - 显示警告查询图标。
' 48 = vbExclamation - 显示警告消息图标。
' 64 = vbInformation - 显示信息消息图标。
' 0 = vbDefaultButton1 - 第一个按钮为默认按钮。
' 256 = vbDefaultButton2 - 第二个按钮为默认按钮。
' 512 = vbDefaultButton3 - 第三个按钮为默认按钮。
' 768 = vbDefaultButton4 - 第四个按钮为默认按钮。
' 0 = vbApplicationModal - 应用程序模式：用户必须响应消息框才能继续在当前应用程序中工作。
' 4096 = vbSystemModal - 系统模式：在用户响应消息框前，所有应用程序都被挂起。
' 第一组值 (0 - 5) 用于描述对话框中显示的按钮类型与数目；第二组值 (16, 32, 48, 64) 用于描述图标的样式；第三组值 (0, 256, 512) 用于确定默认按钮；而第四组值 (0, 4096) 则决定消息框的样式。在将这些数字相加以生成 buttons 参数值时，只能从每组值中取用一个数字。

' title	显示在对话框标题栏中的字符串表达式。如果省略 title，则将应用程序的名称显示在标题栏中。
' helpfile	字符串表达式，用于标识为对话框提供上下文相关帮助的帮助文件。如果已提供 helpfile，则必须提供 context。在 16 位系统平台上不可用。
' context	数值表达式，用于标识由帮助文件的作者指定给某个帮助主题的上下文编号。如果已提供 context，则必须提供 helpfile。在 16 位系统平台上不可用。
' 实例
' dim answer
' answer=MsgBox("Hello everyone!",65,"Example")
' document.write(answer)