accessing
id: aString 

	aString = 'default' 
		ifTrue: [self setIconFrom: (Form fromBinaryStream:  (Base64MimeConverter mimeDecodeToBytes: (IconMorph default readStream)))] 
		ifFalse: [self setIconFrom: (self fetcher getIconFormWith: aString)].
	self updateIconColor
	
	