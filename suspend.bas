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
		Dim sh As Shell
		sh.Initialize("sh","ssh",Array As String("root@172.16.1.55","pm-suspend"))
		sh.Run(5000)
		Main.timer1.Enabled=False
		resp.Write("suspended")
	Else
		resp.Write("wrong password")
	End If
End Sub