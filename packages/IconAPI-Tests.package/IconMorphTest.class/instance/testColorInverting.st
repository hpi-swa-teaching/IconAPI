testing
testColorInverting
	
	"main color kann auch translucent sein, geht dann kaputt"
	
	self icon setIconFromForm: (Form fromBinaryStream:  (Base64MimeConverter mimeDecodeToBytes: (IconMorphTest testImage readStream))).
	icon 
		iconColor: Color white;
		invert.
	self assert: icon scaledForm dominantColor = Color black
