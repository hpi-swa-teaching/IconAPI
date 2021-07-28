testing
testAspectRatioFromForm
	
	self icon setIconFrom: (Form fromBinaryStream:  (Base64MimeConverter mimeDecodeToBytes: (IconMorphTest aspectTestImage readStream))).
	self assert: self icon aspectRatio equals: 600@847.