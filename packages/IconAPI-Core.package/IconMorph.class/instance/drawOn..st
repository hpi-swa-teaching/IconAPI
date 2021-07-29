drawing
drawOn: aCanvas
	
	|position|
	
	super drawOn: aCanvas.
	
	position := self center - (self scaledForm extent // 2).
	aCanvas translucentImage: self scaledForm at: position