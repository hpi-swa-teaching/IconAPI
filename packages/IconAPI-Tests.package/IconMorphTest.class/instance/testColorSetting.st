color setting
testColorSetting

	"main color kann auch translucent sein, geht dann kaputt"
	
	icon iconColor: Color red.
	"self assert: icon scaledForm dominantColor = Color red"