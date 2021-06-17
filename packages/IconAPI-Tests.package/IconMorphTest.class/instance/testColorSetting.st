color setting
testColorSetting

	"main color kann auch translucent sein, geht dann kaputt"
	
	self icon setIconFromForm: (Form fromBinaryStream:  (Base64MimeConverter mimeDecodeToBytes: (IconMorphTest testImage readStream))).
	icon iconColor: Color red.
	self assert: icon scaledForm dominantColor = Color red