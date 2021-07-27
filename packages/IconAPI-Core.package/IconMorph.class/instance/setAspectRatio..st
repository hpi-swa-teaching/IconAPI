geometry
setAspectRatio: aPoint
	
	aPoint 
		ifNil: [self aspectRatio: 1@1]
		ifNotNil: [self aspectRatio: aPoint].
	self updateLayout