$PBExportHeader$w_main.srw
forward
global type w_main from window
end type
type dw_1 from datawindow within w_main
end type
end forward

global type w_main from window
integer width = 1559
integer height = 1812
boolean titlebar = true
string title = "Color Modified"
boolean controlmenu = true
boolean minbox = true
long backcolor = 67108864
string icon = "AppIcon!"
boolean center = true
dw_1 dw_1
end type
global w_main w_main

on w_main.create
this.dw_1=create dw_1
this.Control[]={this.dw_1}
end on

on w_main.destroy
destroy(this.dw_1)
end on

type dw_1 from datawindow within w_main
integer x = 37
integer y = 32
integer width = 1463
integer height = 1664
integer taborder = 10
string title = "none"
string dataobject = "d_dataex"
boolean hscrollbar = true
boolean vscrollbar = true
boolean livescroll = true
borderstyle borderstyle = stylelowered!
end type

event constructor;Long ll_columns,ll_i
String ls_colName

ll_columns = Long(This.Object.DataWindow.Column.Count)
For ll_i = 1 To ll_columns
	ls_colName = This.Describe( "#" + String( ll_i ) + ".Name" )
	This.Modify(ls_colName+".Background.Color='255~t IF ("+ls_colName+" <>"+ls_colName+".Original, 14745599, "+This.Object.DataWindow.Color+")'")
Next

end event

