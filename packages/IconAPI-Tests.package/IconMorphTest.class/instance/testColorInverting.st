color setting
testColorInverting
	
	icon setIconColor: Color white.
	icon openInWorld.
	icon invertColors.
	self assert: icon form dominantColor == Color black