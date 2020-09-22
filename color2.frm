VERSION 5.00
Begin VB.Form Form1 
   BorderStyle     =   1  'Fixed Single
   Caption         =   "Form1"
   ClientHeight    =   2280
   ClientLeft      =   2070
   ClientTop       =   2445
   ClientWidth     =   4080
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   2280
   ScaleWidth      =   4080
   Begin VB.Timer Timer1 
      Interval        =   1
      Left            =   960
      Top             =   1440
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim X, Y, F, G, Z

Private Sub Form_Click()
Timer1.Enabled = False
End Sub

Private Sub Timer1_Timer()
Cls
Form1.AutoRedraw = True
F = 1
G = 255
For Y = 0 To Form1.ScaleHeight Step Form1.ScaleHeight / "254"
F = F + 1
G = G - 1
If Z < 2039.99999999924 Then
Z = Z + 0.1
Form1.Line (0 + Z, Int(Y) - Z)-(Form1.Width - Z, Int(Y) + Z), RGB(G, G, F)
Else
Form1.Line (0 + Z, Int(Y) - Z)-(Form1.Width - Z, Int(Y) + Z), RGB(F, G, G)
Z = Z + 0.2
End If
Next Y
End Sub
