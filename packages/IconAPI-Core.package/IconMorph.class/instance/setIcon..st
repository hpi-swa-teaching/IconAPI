accessing
setIcon: anID 

	anID = 'default' 
		ifTrue: [self setIconFrom: (Form fromBinaryStream:  (Base64MimeConverter mimeDecodeToBytes: IconMorph default readStream))] 
		ifFalse: [self setIconFrom: (self fetcher getIconForm: anID)]
	
