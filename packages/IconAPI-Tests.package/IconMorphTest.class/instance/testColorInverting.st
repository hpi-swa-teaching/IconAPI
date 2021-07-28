testing
testColorInverting
	
	self icon setIconFrom: (Form fromBinaryStream:  (Base64MimeConverter mimeDecodeToBytes: (IconMorphTest testImage readStream))).
	icon 
		iconColor: Color white;
		invert.
	self assert: icon scaledForm dominantColor = Color black.
	
	icon setColorWithoutTransparency: Color white.
	self assert: icon originalForm dominantColor = Color white.
	
	icon invertWithoutTransparency.
	self assert: icon originalForm dominantColor = Color black
