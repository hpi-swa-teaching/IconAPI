helper methods
generateScaledForm: aPoint 

	|pair validPoint|
	
	validPoint := self clampToValidScaleFactor: aPoint.
	self
		scaledForm: (aPoint = (1 @ 1)
				ifTrue: [self originalForm]
				
				ifFalse: [pair := WarpBlt
								rotate: originalForm
								degrees: 0
								center: originalForm boundingBox center
								scaleBy: validPoint
								smoothing: 2.
					pair first])