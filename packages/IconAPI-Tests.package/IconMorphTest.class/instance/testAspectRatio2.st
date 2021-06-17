as yet unclassified
testAspectRatio2
	
	self icon setIconFromForm:  (Form fromBinaryStream:  (Base64MimeConverter mimeDecodeToBytes: (IconMorphTest aspectTestImage readStream)))..
	self assert: icon aspectRatio equals: 600@847.