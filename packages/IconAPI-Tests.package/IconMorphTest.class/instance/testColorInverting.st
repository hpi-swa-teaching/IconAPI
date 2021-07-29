testing
testColorInverting
	
	self icon setIconFrom: (Form fromBinaryStream: (Base64MimeConverter mimeDecodeToBytes: self class testImage readStream)).
	icon 
		iconColor: Color white;
		invert.
	self assert: icon scaledForm dominantColor equals: Color black.
	
	icon setColorWithoutTransparency: Color white.
	self assert: icon originalForm dominantColor equals: Color white.
	
	icon invertWithoutTransparency.
	self assert: icon originalForm dominantColor equals: Color black
