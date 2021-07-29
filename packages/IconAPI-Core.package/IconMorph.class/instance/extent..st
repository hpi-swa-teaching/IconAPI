geometry
extent: aPoint
	
	|aspectRatio heightScaled widthScaled targetWidth targetHeight scaleFactor|
	
	super extent: aPoint.
	
	aspectRatio := self aspectRatio x / self aspectRatio y.
	widthScaled := self height * aspectRatio.
	heightScaled := self width / aspectRatio.
	
	widthScaled <= self width
		ifTrue: [
			targetWidth := widthScaled.
			targetHeight := self height]
		ifFalse: [
			targetWidth := self width.
			targetHeight := heightScaled].	
			
	scaleFactor := (targetWidth / self originalForm width) @ (targetHeight / self originalForm height).
	self generateScaledForm: scaleFactor