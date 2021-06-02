accessing
extent: newExtent
	
	| aspectRatio heightScaled widthScaled frameWidth frameHeight targetWidth targetHeight scaleFactor |
	
	super extent: newExtent.
	
	aspectRatio := self aspectRatio x / self aspectRatio y.
	frameWidth := self width - (2 * self padding).
	frameHeight := self height - (2 * self padding).
	
	widthScaled := frameHeight * aspectRatio.
	heightScaled := frameWidth / aspectRatio.
		
	widthScaled <= frameWidth
		ifTrue: [
				targetWidth := widthScaled.
				targetHeight := frameHeight]
		ifFalse: [
				targetWidth := frameWidth.
				targetHeight := heightScaled].
			
	scaleFactor := (targetWidth / self originalForm width) @ (targetHeight / self originalForm height).
			
	self generateScaledForm: scaleFactor