accessing
setIcon: anID 

	iconID := anID.
	iconPath :=( FileDirectory uri: 'Icons/', anID,'.png') fullName.
	self form: (PNGReadWriter formFromFileNamed: self iconPath)
