accessing
setIcon: anID 

	self id: anID.
	self path: ( FileDirectory uri: 'Icons/', anID,'.png') fullName.
	self originalForm: ((PNGReadWriter formFromFileNamed: self path) scaledToSize: 300@200).
	self scaledForm: (PNGReadWriter formFromFileNamed: self path).
	self updateLayout.
