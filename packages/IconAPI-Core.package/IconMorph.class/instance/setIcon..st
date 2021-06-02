accessing
setIcon: anID 

	^ self
		id: anID;
		path: (FileDirectory uri: 'Icons/', anID,'.png') fullName;
		originalForm: (PNGReadWriter formFromFileNamed: self path);
		scaledForm: (PNGReadWriter formFromFileNamed: self path);
		updateLayout;
		yourself
