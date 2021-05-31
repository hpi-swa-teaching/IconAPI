accessing
generateScaledForm: aPoint

	|pair|

	self scaledForm: (aPoint = (1 @ 1)
				ifTrue: [ self originalForm ]
				ifFalse: [
					pair := WarpBlt 
								rotate: originalForm
								degrees: 0
								center: originalForm boundingBox center
								scaleBy: aPoint
								smoothing: 2.
					pair first])