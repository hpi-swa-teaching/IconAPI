drawing
drawOn: aCanvas

	super drawOn: aCanvas.
	aCanvas translucentImage: self scaledForm at: (self center - (self scaledForm extent // 2))