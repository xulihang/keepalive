B4J=true
Group=Default Group
ModulesStructureVersion=1
Type=Class
Version=6.51
@EndOfDesignText@
'Handler class
Sub Class_Globals
	
End Sub

Public Sub Initialize
	
End Sub

Sub Handle(req As ServletRequest, resp As ServletResponse)
	Dim psw As String
	psw=req.GetParameter("psw")
	If psw="alive" Then
		Main.previousDate=DateTime.Now
		Dim sh As Shell
		sh.Initialize("sh","sh",Array As String("/home/pi/wakeonlan.sh"))
		sh.Run(5000)
		resp.Write("kept alive")
	Else
		resp.Write("wrong password")
	End If
End Sub

