accessing
setIcon: anID from: aDirectory

	| path |
	
	path := (FileDirectory uri: aDirectory,'\', anID, '.png') fullName.

	anID = 'default' 
		ifTrue: [
			self originalForm: (Form fromBinaryStream:  (Base64MimeConverter mimeDecodeToBytes: (IconMorph default readStream))).
			self scaledForm: (Form fromBinaryStream: (Base64MimeConverter mimeDecodeToBytes: (IconMorph default readStream)))] 
		ifFalse: [
			self originalForm: (PNGReadWriter formFromFileNamed: path).
			self scaledForm: (PNGReadWriter formFromFileNamed: path)].
	
	^ self
		id: anID;
		path: path;
		setAspectRatio: self calculateAspectRatio;
		updateLayout;
		yourself