accessing
getIconForm: anID

	|path|
	
	path := (self directory / (anID, '.png')) fullName.
	^ PNGReadWriter formFromFileNamed: path
