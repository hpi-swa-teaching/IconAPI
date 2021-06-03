accessing
invert
	
	self form depth = 32 
		ifTrue: [self invertWithTransparency]
		ifFalse: [self invertWithoutTransparency].
	self iconColor: self iconColor negated;
		changed
