helper methods
generateScaledForm: aPoint 

	|pair validPoint|
	
	aPoint = (1 @ 1)
		ifTrue: [self scaledForm: self originalForm]
		ifFalse: [
			validPoint := self clampToValidScaleFactor: aPoint.
			pair := WarpBlt
						rotate: originalForm
						degrees: 0
						center: originalForm boundingBox center
						scaleBy: validPoint
						smoothing: 2.
			self scaledForm: pair first]
