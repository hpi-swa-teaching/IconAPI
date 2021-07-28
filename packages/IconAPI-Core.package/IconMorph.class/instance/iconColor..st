accessing
iconColor: aColor

	self originalForm depth = 32 
		ifTrue: [self setColorWithTransparency: aColor]
		ifFalse: [self setColorWithoutTransparency: aColor].
	self 
		basicIconColor: aColor;
		isIconColorSet: true;
		updateLayout
