accessing
setIcon: anID 

	iconID := anID.
	iconPath :=( FileDirectory uri: 'Icons/', anID,'.png') fullName.
	self sketchMorph form: (PNGReadWriter formFromFileNamed: self iconPath).
	self iconColor: self sketchMorph form dominantColor.
