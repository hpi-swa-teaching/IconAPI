accessing
extent: newExtent
	
	|aspectRatio heightScaled widthScaled frameWidth frameHeight|
	
	aspectRatio := self sketchMorph width / self sketchMorph height.
	frameWidth := self width - (2 * self padding).
	frameHeight := self height - (2 * self padding).
	super extent: newExtent.
	
	widthScaled := frameHeight * aspectRatio.
	heightScaled := frameWidth / aspectRatio.
	
	widthScaled <= frameWidth
		ifTrue: [self sketchMorph extent: widthScaled@frameHeight]
		ifFalse: [self sketchMorph extent: frameWidth@heightScaled].
		
	
	"keep the icon centered"
	self sketchMorph position: self center - (self sketchMorph extent // 2)