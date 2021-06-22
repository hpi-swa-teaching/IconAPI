color setting
testColorSetting
	
	self icon setIconFrom: (Form fromBinaryStream:  (Base64MimeConverter mimeDecodeToBytes: IconMorphTest testImage readStream)).
	icon iconColor: Color red.
	self assert: icon scaledForm dominantColor = Color red
