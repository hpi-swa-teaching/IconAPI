running
setUp

	self icon: IconMorph new.
	self icon setAspectRatio: 1@2.
	self icon originalForm: (Form fromBinaryStream:  (Base64MimeConverter mimeDecodeToBytes: (IconMorphTest testImage readStream))).
	self icon scaledForm: (Form fromBinaryStream:  (Base64MimeConverter mimeDecodeToBytes: (IconMorphTest testImage readStream))).
	