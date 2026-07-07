# DWG2DXFX
**AutoDWG DWG2DXF Component**

## License Notice
1. Free trial / non-commercial use: GNU LGPLv3
2. Commercial production use, closed-source integration requires purchasing our commercial license.

Contact info@autodwg.com for commercial authorization.

## AutoDWG DWG DXF Control Component
DWG2DXFX allows you to convert drawings between DXF and DWG, and AutoCAD file version conversions, no AutoCAD required.

### Key features
- Convert DWG to DXF
- Convert DXF to DWG
- Convert Version from low to high and high to low for DWG and DXF
- Support DWG and DXF in versions from R9 to 2027

### Free Trial Download Link
https://github.com/autodwg/DWG2DXFX/releases/download/v1.8.5/DWG2DXFX-v1.8.5.zip

## User Guide
### Getting Started
Quick setup (The steps below are for 64-bit installation.)

#### Step 1: Register the DLL Component
Double-click `reg.bat` to automatically register `ActiveConverter64.dll` on your system.

If registration fails:
Open Command Prompt as Administrator via:
Start Menu → Windows System → Right-click "Command Prompt" → Run as Administrator

Manually register the DLL using command:
```cmd
regsvr32 ActiveConverter64.dll
```
#### Step 2: Test with Example VBScript
Use the provided sample script test.vbs in the Examples folder to verify functionality.
Ensure the script executes without errors and generates the expected SVG output.

**Sample Code**

Sample Code (VB) for your reference:
```
set obj = CreateObject("ActiveConverter.ADConverter")
obj.Type = 1		'See below to choose "obj.Type"
obj.Version = 0		'See below to choose "obj.Version"
obj.InputFileName = "test.dwg"
obj.OutputFileName = "test.dxf"
obj.Convert
MsgBox "Complete!"


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
```
