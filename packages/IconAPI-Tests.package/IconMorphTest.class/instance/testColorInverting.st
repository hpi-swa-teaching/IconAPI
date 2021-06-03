color setting
testColorInverting
	
	"main color kann auch translucent sein, geht dann kaputt"
	
	icon color: Color white.
	icon invert.
	"self assert: icon scaledForm dominantColor = Color black"
