macroScript xlsSurveyDataImporter category:"Decent Tools" buttonText:"xls Data Importer 1.0"
(
rollout xlsSurveyDataImporter "Xls Survey Data Importer 1.0 MLF2007" width:419 height:395
(
	groupBox grp_fileChoice "Choose file" pos:[5,5] width:390 height:90
	groupBox grp_markerType "Marker type" pos:[5,95] width:390 height:100
	editText edt_sheetFilePath "Data file: " pos:[10,25] width:345 height:20
	button btn_browseSheetFile "..." pos:[360,25] width:30 height:20 toolTip:"browse..."
	radioButtons rdo_fileType "Choose filetype:" pos:[75,50] width:114 height:30 labels:#(".xls", "other") default:1 columns:2
	radioButtons rdo_geometryType "Geometry type" pos:[70,119] width:114 height:46 labels:#("Sphere", "Box", "Point", "Mesh") default:1 columns:2
	editText edt_meshFilePath "Mesh file: " pos:[10,165] width:345 height:20 enabled:false
	button btn_browseMeshFile "..." pos:[359,165] width:30 height:20 enabled:false toolTip:"browse..."
	groupBox grp_dataOptions "Data options" pos:[5,195] width:390 height:141
	dropDownList ddl_xCol "x position column:" pos:[14,220] width:86 height:40 items:#("A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z")
	dropDownList ddl_yCol "y position column:" pos:[107,220] width:86 height:40 items:#("A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z")
	dropDownList ddl_zCol "z position column:" pos:[201,220] width:86 height:40 items:#("A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z")
	dropDownList ddl_rowCountFrom "From row:" pos:[120,283] width:67 height:40 enabled:true items:#("Auto", "1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25", "26", "27", "28", "29", "30", "31", "32", "33", "34", "35", "36", "37", "38", "39", "40", "41", "42", "43", "44", "45", "46", "47", "48", "49", "50", "51", "52", "53", "54", "55", "5t6", "57", "58", "59", "60", "61", "62", "63", "64", "65", "66", "67", "68", "69", "70", "71", "72", "73", "74", "75", "76", "77", "78", "79", "80", "81", "82", "83", "84", "85", "86", "87", "88", "89", "90", "91", "92", "93", "94", "95", "96", "97", "98", "99", "100") selection:1
	label lbl_rowCountInfo "If you know the rows that contain the data, please specify here:" pos:[276,283] width:106 height:44
	groupBox grp_manualRowCountSelection "Manual row selection" pos:[115,270] width:275 height:58
	progressBar pb_import "F" pos:[400,10] width:15 height:375 value:10 color:(color 00 255 00) orient:#vertical
	button btn_import "Import" pos:[140,345] width:120 height:40 toolTip:"Import the data"
	button btn_cancel "Cancel" pos:[275,345] width:120 height:40 toolTip:"Closes this window"
	dropDownList ddl_rowCountTo "To row:" pos:[194,283] width:67 height:40 enabled:true items:#("Auto", "1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25", "26", "27", "28", "29", "30", "31", "32", "33", "34", "35", "36", "37", "38", "39", "40", "41", "42", "43", "44", "45", "46", "47", "48", "49", "50", "51", "52", "53", "54", "55", "5t6", "57", "58", "59", "60", "61", "62", "63", "64", "65", "66", "67", "68", "69", "70", "71", "72", "73", "74", "75", "76", "77", "78", "79", "80", "81", "82", "83", "84", "85", "86", "87", "88", "89", "90", "91", "92", "93", "94", "95", "96", "97", "98", "99", "100") selection:1
	dropDownList ddl_nameCol "name column:" pos:[297,220] width:86 height:40 items:#("A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z")
	on btn_browseSheetFile pressed  do
(
		Sheetfile = getOpenFileName caption:"Choose spreadsheet file:" \ 
		types:"Excel(*.xls)|*.xls|All|*.*" 		
		if Sheetfile != null do edt_sheetFilePath.text = Sheetfile 		--open file browser and pass eventual filepath to edt_sheetFilePath
	)
	on rdo_geometryType changed stat do
(
		if rdo_geometryType.state == 4 then
		(
		    edt_meshFilePath.enabled = true
		    btn_browseMeshFile.enabled = true
		)else(
		    edt_meshFilePath.enabled = false
		    btn_browseMeshFile.enabled = false
		)
	)
	on btn_browseMeshFile pressed  do
(
		meshfile = getOpenFileName caption:"Choose mesh file:" \ 
		types:"3ds(*.3ds)|*.3ds|All files|*.*" 
		if meshfile != null do edt_meshFilePath.text = meshfile 
		-- browse to mesh file and record path in edt_meshFilePath.text
	)
	on btn_import pressed  do
	(
	rowCount = 0
	xColumn = 2
	yColumn = 3
	zColumn = 4
	nameColumn = 1
	marker = sphere() 
	edt_sheetFilePath.text 
	xl = CreateOLEObject "Excel.Application" 
	xl.workbooks.Open edt_sheetFilePath.text 
	if rdo_geometryType.state == 0 do marker = sphere() 
	if rdo_geometryType.state == 1 do marker = box() 
	if rdo_geometryType.state == 2 do marker = point() 
	-- get the workbook. Workbook is apperently the open file. 
	if xl.Workbooks.count > 0 do 
	(
	    tempWorkbook = xl.Workbooks 1 
	    --get the worksheet, the "tab" of the spreadsheet. 
	    tempWorksheet = tempWorkbook.worksheets 1 
	    rowCount = tempWorksheet.usedRange.rows.count
	
	    -- make name, xPos, yPos and zPos arrays 	
	    names = #() 
	    xPositions = #() 
	    yPositions = #() 
	    zPositions = #() 

	    -- fill those arrays & make those markers: 	
	    for i = 1 to rowCount do	
	    ( 
	        names[i] = (tempWorksheet.cells nameColumn i).value
	        xPositions[i] = (tempWorksheet.cells i xColumn).value
	        yPositions[i] = (tempWorksheet.cells i yColumn).value
	        zPositions[i] = (tempWorksheet.cells i zColumn).value
	
	        sphere prefix:"surveyMarker_" position:[xPositions[i], yPositions[i], zPositions[i]]
	    )
	xl.quit()
	releaseOLEObject xl
	releaseAllOLEObjects()
	
	)
	)
	on btn_cancel pressed  do
		destroyDialog xlsSurveyDataImporter
)
function charToInt charVal =
(
	tempInt = 0
	if charVal == "A" do tempInt = 1
	if charVal == "B" do tempInt = 2
	if charVal == "C" do tempInt = 3
	if charVal == "D" do tempInt = 4
	if charVal == "E" do tempInt = 5
	if charVal == "F" do tempInt = 6
	if charVal == "G" do tempInt = 7
	if charVal == "H" do tempInt = 8
	if charVal == "I" do tempInt = 9
	if charVal == "J" do tempInt = 10
	if charVal == "K" do tempInt = 11
	if charVal == "L" do tempInt = 12
	if charVal == "M" do tempInt = 13
	if charVal == "N" do tempInt = 14
	if charVal == "O" do tempInt = 15
	if charVal == "P" do tempInt = 16
	if charVal == "Q" do tempInt = 17
	if charVal == "R" do tempInt = 18
	if charVal == "S" do tempInt = 19
	if charVal == "T" do tempInt = 20
	if charVal == "U" do tempInt = 21
	if charVal == "V" do tempInt = 22
	if charVal == "W" do tempInt = 23
	if charVal == "X" do tempInt = 24
	if charVal == "Y" do tempInt = 25
	if charVal == "Z" do tempInt = 26
	return tempInt
)
createDialog xlsSurveyDataImporter 420 395
)
