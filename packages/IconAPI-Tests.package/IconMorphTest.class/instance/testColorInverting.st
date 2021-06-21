color setting
testColorInverting
	
	self icon setIconFrom: (Form fromBinaryStream:  (Base64MimeConverter mimeDecodeToBytes: (IconMorphTest testImage readStream))).
	icon 
		iconColor: Color white;
		invert.
	self assert: icon scaledForm dominantColor = Color black
