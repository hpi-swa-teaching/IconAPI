accessing
setIcon: anID 

	iconID := anID.
	(IconDatabase storedIcons like: anID) ifNil: [
		iconPath :=( FileDirectory uri: 'Icons/', anID,'.png') fullName.
		self form: (PNGReadWriter formFromFileNamed: self iconPath).
		self iconColor: self form dominantColor.];
	ifNotNil: [ self form: (Form fromBinaryStream: 
				(Base64MimeConverter mimeDecodeToBytes: (IconDatabase perform: anID asSymbol) readStream))]

	
