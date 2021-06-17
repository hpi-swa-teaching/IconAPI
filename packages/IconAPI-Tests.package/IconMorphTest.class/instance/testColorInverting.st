color setting
testColorInverting
	
	"main color kann auch translucent sein, geht dann kaputt"
	
	icon 
		iconColor: Color white;
		invert.
	self assert: icon scaledForm dominantColor = Color black
