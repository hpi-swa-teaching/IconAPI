accessing
setIcon: anID 

	self id: anID.
	self path: ( FileDirectory uri: 'Icons/', anID,'.png') fullName.
	self originalForm: (PNGReadWriter formFromFileNamed: self path).
	self scaledForm: (PNGReadWriter formFromFileNamed: self path).
	self updateLayout.
