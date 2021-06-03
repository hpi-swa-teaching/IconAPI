color setting
testColorSetting

	"main color kann auch translucent sein, geht dann kaputt"
	
	icon color: Color red.
	"self assert: icon scaledForm dominantColor = Color red"