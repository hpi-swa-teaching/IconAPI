accessing
setIcon: anID 

	anID = 'default' 
		ifTrue: [
			self originalForm: (Base64MimeConverter mimeDecodeToBytes: (IconMorph default readStream)).
			self scaledForm: (Base64MimeConverter mimeDecodeToBytes: (IconMorph default readStream))] 
		ifFalse: [
			self originalForm: (PNGReadWriter formFromFileNamed: self path).
			self scaledForm: (PNGReadWriter formFromFileNamed: self path)].
	
	^ self
		id: anID;
		path: (FileDirectory uri: 'Icons/', anID,'.png') fullName;
		updateLayout;
		yourself