color setting
testColorInverting
	
	"main color kann auch translucent sein, geht dann kaputt"
	
	icon setIconColor: Color white.
	icon invertColors.
	"self assert: icon scaledForm dominantColor = Color black"