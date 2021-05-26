color setting
testColorInverting
	
	icon setIconColor: Color white.
	icon openInWorld.
	icon invert.
	self assert: icon form dominantColor == Color black