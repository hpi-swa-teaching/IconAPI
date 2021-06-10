accessing
color: aColor

	self originalForm depth = 32 
		ifTrue: [self colorWithTransparency: aColor]
		ifFalse: [self colorWithoutTransparency: aColor].
	self updateLayout
