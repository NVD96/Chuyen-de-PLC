VERSION 5.00
Object = "{648A5603-2C6E-101B-82B6-000000000014}#1.1#0"; "MSCOMM32.OCX"
Begin VB.Form Form1 
   BackColor       =   &H00FF0000&
   Caption         =   "FATEK (Group: AE Tu Dong Hoa)"
   ClientHeight    =   4440
   ClientLeft      =   7995
   ClientTop       =   4710
   ClientWidth     =   7875
   Icon            =   "CrackFatek.frx":0000
   LinkTopic       =   "Form1"
   ScaleHeight     =   4440
   ScaleWidth      =   7875
   Begin VB.Timer Timer1 
      Interval        =   10
      Left            =   6960
      Top             =   5040
   End
   Begin VB.CommandButton btnCMD2 
      BackColor       =   &H0000FFFF&
      Caption         =   "CLEAR"
      BeginProperty Font 
         Name            =   "Tahoma"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   615
      Left            =   4920
      Style           =   1  'Graphical
      TabIndex        =   15
      Top             =   5040
      Width           =   1935
   End
   Begin VB.CommandButton btnCMD1 
      BackColor       =   &H0000FFFF&
      Caption         =   "Ghi de"
      BeginProperty Font 
         Name            =   "Tahoma"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   615
      Left            =   2640
      Style           =   1  'Graphical
      TabIndex        =   14
      Top             =   3600
      Width           =   1935
   End
   Begin VB.CommandButton btnCMD 
      BackColor       =   &H0000FFFF&
      Caption         =   "10000080"
      BeginProperty Font 
         Name            =   "Tahoma"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   615
      Left            =   120
      Style           =   1  'Graphical
      TabIndex        =   13
      Top             =   3600
      Width           =   1935
   End
   Begin VB.CommandButton btnDisconnect 
      BackColor       =   &H0000FFFF&
      Caption         =   "Disconnect"
      BeginProperty Font 
         Name            =   "Tahoma"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   400
      Left            =   2640
      Style           =   1  'Graphical
      TabIndex        =   12
      Top             =   3000
      Visible         =   0   'False
      Width           =   1935
   End
   Begin VB.CommandButton btnSAIMK 
      BackColor       =   &H0000FFFF&
      Caption         =   "So lan sai MK"
      BeginProperty Font 
         Name            =   "Tahoma"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   615
      Left            =   2640
      Style           =   1  'Graphical
      TabIndex        =   11
      Top             =   5040
      Width           =   1935
   End
   Begin VB.CommandButton btnInit 
      BackColor       =   &H0000FFFF&
      Caption         =   "Init"
      BeginProperty Font 
         Name            =   "Tahoma"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   615
      Left            =   360
      Style           =   1  'Graphical
      TabIndex        =   10
      Top             =   5040
      Width           =   1935
   End
   Begin VB.CommandButton btnREAD1 
      BackColor       =   &H0000FFFF&
      Caption         =   "STOP"
      BeginProperty Font 
         Name            =   "Tahoma"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   615
      Left            =   2640
      Style           =   1  'Graphical
      TabIndex        =   9
      Top             =   1080
      Width           =   1935
   End
   Begin VB.TextBox Text2 
      BackColor       =   &H0000FFFF&
      BeginProperty Font 
         Name            =   "Tahoma"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FF0000&
      Height          =   3975
      Left            =   4680
      MultiLine       =   -1  'True
      ScrollBars      =   2  'Vertical
      TabIndex        =   7
      Text            =   "CrackFatek.frx":058A
      Top             =   240
      Width           =   3135
   End
   Begin VB.CommandButton btnConnect 
      BackColor       =   &H0000FFFF&
      Caption         =   "Connect"
      BeginProperty Font 
         Name            =   "Tahoma"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   400
      Left            =   2640
      Style           =   1  'Graphical
      TabIndex        =   6
      Top             =   3000
      Width           =   1935
   End
   Begin VB.CommandButton btnACK 
      BackColor       =   &H0000FFFF&
      Caption         =   "ACK MK"
      BeginProperty Font 
         Name            =   "Tahoma"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   735
      Left            =   2640
      Style           =   1  'Graphical
      TabIndex        =   5
      Top             =   2040
      Width           =   1935
   End
   Begin VB.TextBox Text1 
      Alignment       =   2  'Center
      BackColor       =   &H0000FFFF&
      BeginProperty Font 
         Name            =   "Tahoma"
         Size            =   15
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FF0000&
      Height          =   375
      Left            =   1200
      TabIndex        =   3
      Text            =   "5"
      Top             =   3000
      Width           =   615
   End
   Begin VB.CommandButton btnMK 
      BackColor       =   &H0000FFFF&
      Caption         =   "GAN MK"
      BeginProperty Font 
         Name            =   "Tahoma"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   735
      Left            =   120
      Style           =   1  'Graphical
      TabIndex        =   2
      Top             =   2040
      Width           =   1935
   End
   Begin VB.CommandButton btnREAD 
      BackColor       =   &H0000FFFF&
      Caption         =   "RUN"
      BeginProperty Font 
         Name            =   "Tahoma"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   615
      Left            =   120
      Style           =   1  'Graphical
      TabIndex        =   1
      Top             =   1080
      Width           =   1935
   End
   Begin VB.CommandButton btnMANHAY 
      BackColor       =   &H0000FFFF&
      Caption         =   "LAY MA NHAY"
      BeginProperty Font 
         Name            =   "Tahoma"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   735
      Left            =   120
      Style           =   1  'Graphical
      TabIndex        =   0
      Top             =   240
      Width           =   4455
   End
   Begin MSCommLib.MSComm MSComm1 
      Left            =   5040
      Top             =   2880
      _ExtentX        =   1005
      _ExtentY        =   1005
      _Version        =   393216
      DTREnable       =   -1  'True
      InBufferSize    =   2048
      InputLen        =   2048
      RThreshold      =   1
      ParitySetting   =   2
      DataBits        =   7
      SThreshold      =   1
   End
   Begin VB.Label Label2 
      BackColor       =   &H00FF0000&
      Caption         =   "Design by: DINHMENH"
      BeginProperty Font 
         Name            =   "Tahoma"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   -1  'True
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H0000FFFF&
      Height          =   255
      Left            =   20640
      TabIndex        =   8
      Top             =   11520
      Width           =   2175
   End
   Begin VB.Label Label1 
      Alignment       =   2  'Center
      BackColor       =   &H0000FFFF&
      BorderStyle     =   1  'Fixed Single
      Caption         =   "COM"
      BeginProperty Font 
         Name            =   "Tahoma"
         Size            =   14.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H000000FF&
      Height          =   375
      Left            =   240
      TabIndex        =   4
      Top             =   3000
      Width           =   975
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit

Dim a1, a2, a3, a4 As Integer

Private Sub btnACK_Click()
Dim ackk(20) As Byte
Dim i, tinhtoan, crc1, crc2 As Variant

tinhtoan = 0
ackk(0) = &H2
ackk(1) = &H30
ackk(2) = &H31
ackk(3) = &H32
ackk(4) = &H35
ackk(5) = a1
ackk(6) = a2
ackk(7) = a3
ackk(8) = a4
ackk(9) = &H34
ackk(10) = &HFF
ackk(11) = &HFF
ackk(12) = &HFF
ackk(13) = &HFF
ackk(14) = &HFF
ackk(15) = &HFF
ackk(16) = &HFF
ackk(17) = &HFF

For i = 0 To 19
tinhtoan = tinhtoan + ackk(i)
Next
crc1 = Asc(Mid(Hex(tinhtoan), Len(Hex(tinhtoan)) - 1, 1))
crc2 = Asc(Mid(Hex(tinhtoan), Len(Hex(tinhtoan)), 1))
ackk(18) = crc1
ackk(19) = crc2
ackk(20) = &H3
MSComm1.Output = ackk
End Sub


Private Sub btnCMD_Click()

Dim ackk(19) As Byte
Dim i, tinhtoan, crc1, crc2 As Variant

'If Val(Text3.Text) = 8 Then
    'MSComm1.RThreshold = 265    ' 252 byte data
  
'End If
'If Val(Text3.Text) = 6 Then
    'MSComm1.RThreshold = 201  ' 188 byte data
 
'End If
'If Val(Text3.Text) = 4 Then
    'MSComm1.RThreshold = 137 ' 124 byte data
   
'End If
'If Val(Text3.Text) = 2 Then
    'MSComm1.RThreshold = 73  '70 byte data
   
'End If

tinhtoan = 0
ackk(0) = &H2
ackk(1) = &H30
ackk(2) = &H31
ackk(3) = &H31
ackk(4) = &H31
ackk(5) = a1
ackk(6) = a2
ackk(7) = a3
ackk(8) = a4
ackk(9) = &H31
ackk(10) = &H30 'Asc(Val(Text3.Text))
ackk(11) = &H30
ackk(12) = &H30
ackk(13) = &H30
ackk(14) = &H30
ackk(15) = &H38
ackk(16) = &H30

For i = 0 To 16
tinhtoan = tinhtoan + ackk(i)
Next
crc1 = Asc(Mid(Hex(tinhtoan), Len(Hex(tinhtoan)) - 1, 1))
crc2 = Asc(Mid(Hex(tinhtoan), Len(Hex(tinhtoan)), 1))
ackk(17) = crc1
ackk(18) = crc2
ackk(19) = &H3
MSComm1.Output = ackk


End Sub

Private Sub btnCMD1_Click()

Dim ackk(166) As Byte
Dim i, tinhtoan, crc1, crc2 As Variant
Dim j As Integer

tinhtoan = 0
ackk(0) = &H2
ackk(1) = &H30
ackk(2) = &H31
ackk(3) = &H31
ackk(4) = &H33
ackk(5) = a1
ackk(6) = a2
ackk(7) = a3
ackk(8) = a4
ackk(9) = &H31
ackk(10) = &H30
ackk(11) = &H38
ackk(12) = &H30
ackk(13) = &H30
ackk(14) = &H30
ackk(15) = &H38
ackk(16) = &H30

ackk(17) = &H34
ackk(18) = &H34
ackk(19) = &H36
ackk(20) = &H39

For j = 21 To 159
    ackk(j) = &H46
Next

ackk(160) = &H32
ackk(161) = &H31
ackk(162) = &H30
ackk(163) = &H31

For i = 0 To 163
tinhtoan = tinhtoan + ackk(i)
Next
crc1 = Asc(Mid(Hex(tinhtoan), Len(Hex(tinhtoan)) - 1, 1))
crc2 = Asc(Mid(Hex(tinhtoan), Len(Hex(tinhtoan)), 1))
ackk(164) = crc1
ackk(165) = crc2
ackk(166) = &H3
MSComm1.Output = ackk

End Sub

Private Sub btnCMD2_Click()

Dim ackk(7) As Byte


ackk(0) = &H2
ackk(1) = &H30
ackk(2) = &H31
ackk(3) = &H31
ackk(4) = &H32
ackk(5) = &H43
ackk(6) = &H36
ackk(7) = &H3

MSComm1.Output = ackk

End Sub

Private Sub btnConnect_Click()
    If MSComm1.PortOpen = False Then
        MSComm1.CommPort = Val(Text1.Text)
        MSComm1.PortOpen = True
        btnDisconnect.Visible = True
        btnConnect.Visible = False
    End If
End Sub

Private Sub btnDisconnect_Click()
    btnConnect.Visible = True
    MSComm1.PortOpen = False
    btnDisconnect.Visible = False
End Sub

Private Sub btnInit_Click()
Dim doc(7) As Byte
Dim i, tinhtoan, crc1, crc2 As Variant


doc(0) = &H2
doc(1) = &H30
doc(2) = &H31
doc(3) = &H31
doc(4) = &H36
doc(5) = &H43
doc(6) = &H41
doc(7) = &H3
MSComm1.Output = doc
End Sub

Private Sub btnMANHAY_Click()
Dim manhay(7) As Byte
'MSComm1.RThreshold = 66
manhay(0) = &H2
manhay(1) = &H30
manhay(2) = &H31
manhay(3) = &H30
manhay(4) = &H30
manhay(5) = &H43
manhay(6) = &H33
manhay(7) = &H3
MSComm1.Output = manhay
End Sub

Private Sub btnMK_Click()
Dim gan(531) As Integer
Dim i As Integer
Dim chuoiMK As String
gan(0) = &H2
chuoiMK = "001132468100000004642533430303033FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5872FFFFFFFFFFFFFFFFFFFF9361ACDE5A1E0B45FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7341FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF2C001812FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF"
'MsgBox (Len(chuoiMK))
For i = 1 To Len(chuoiMK)
gan(i) = Asc(Mid(chuoiMK, i + 1, 1))
Next
MsgBox (gan(2))
'MSComm1.Output = gan
End Sub

Private Sub btnREAD_Click()
Dim doc(8) As Byte
Dim i, tinhtoan, crc1, crc2 As Variant


doc(0) = &H2
doc(1) = &H30
doc(2) = &H31
doc(3) = &H31
doc(4) = &H41
doc(5) = &H31
doc(6) = &H30
doc(7) = &H36
doc(8) = &H3
MSComm1.Output = doc

End Sub



Private Sub btnREAD1_Click()
Dim doc(8) As Byte
Dim i, tinhtoan, crc1, crc2 As Variant


doc(0) = &H2
doc(1) = &H30
doc(2) = &H31
doc(3) = &H31
doc(4) = &H41
doc(5) = &H30
doc(6) = &H30
doc(7) = &H35
doc(8) = &H3
MSComm1.Output = doc
End Sub

Private Sub btnSAIMK_Click()
Dim gan(16) As Byte

gan(0) = &H2
gan(1) = &H30
gan(2) = &H31
gan(3) = &H31
gan(4) = &H35
gan(5) = &H30
gan(6) = &H31
gan(7) = &H30
gan(8) = &H31
gan(9) = &H3E
gan(10) = &H30
gan(11) = &H46
gan(12) = &H42
gan(13) = &H33
gan(14) = &H42
gan(15) = &H34
gan(16) = &H3
MSComm1.Output = gan
End Sub

Private Sub MSComm1_OnComm()
Dim rev_c As String
Dim revceive_data As String
Dim manhay, dem As Long
Dim ketqua As String

    Select Case MSComm1.CommEvent
        Case comEvSend
            Text2.Text = ""
        Case comEvReceive
            Text2.Text = Text2.Text + MSComm1.Input
        End Select
End Sub

Private Sub Timer1_Timer()
Dim rev_c As String
Dim revceive_data As String
Dim manhay, dem As Long
Dim ketqua As String

 If Len(Text2.Text) = 66 Then
 
              
         manhay = "&H" & Mid(Text2.Text, 60, 4)
         ketqua = Hex(65535 - manhay)
         If Len(ketqua) < 4 Then
                a1 = &H30
                a2 = Asc(Mid(ketqua, 1, 1))
                a3 = Asc(Mid(ketqua, 2, 1))
                a4 = Asc(Mid(ketqua, 3, 1))
         Else
                a1 = Asc(Mid(ketqua, 1, 1))
                a2 = Asc(Mid(ketqua, 2, 1))
                a3 = Asc(Mid(ketqua, 3, 1))
                a4 = Asc(Mid(ketqua, 4, 1))
         End If

 End If



End Sub
