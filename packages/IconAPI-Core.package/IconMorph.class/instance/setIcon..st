accessing
setIcon: anID 

	anID = 'default' 
		ifTrue: [self setIconFromForm: (Form fromBinaryStream:  (Base64MimeConverter mimeDecodeToBytes: (IconMorph default readStream)))] 
		ifFalse: [self setIconFromForm: (self fetcher getIconForm: anID)]
	