set obj = CreateObject("ActiveConverter.ADConverter")
obj.Type = 1		'See below to choose "obj.Type"
obj.Version = 0		'See below to choose "obj.Version"
obj.InputFileName = "test.dwg"
obj.OutputFileName = "test.dxf"
obj.Convert
MsgBox "Complete!s"


'obj.Type
'1	DWG to DXF
'2	DXF to DWG
'3	File version conversion

'obj.Version:
'0	current version
'1	autocad 2000~2002
'2	autocad R14
'3	autocad R13
'4	autocad R12
'5	autocad r11
'6	autocad r10
'7	autocad r9
'8	autocad 2004~2006
'9	autocad 2007
'Notice: AutoCAD R9, R10 and R11 are only effective when the output file format is DXF.