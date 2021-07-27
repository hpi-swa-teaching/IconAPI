color setting
invert
	
	self originalForm depth = 32 
		ifTrue: [self invertWithTransparency]
		ifFalse: [self invertWithoutTransparency].
	self updateLayout
	
