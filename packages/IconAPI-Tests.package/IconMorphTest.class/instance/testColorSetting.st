testing
testColorSetting
	
	self icon setIconFrom: (Form fromBinaryStream: (Base64MimeConverter mimeDecodeToBytes: self class testImage readStream)).
	icon iconColor: Color red.
	
	self assert: icon scaledForm dominantColor equals: Color red