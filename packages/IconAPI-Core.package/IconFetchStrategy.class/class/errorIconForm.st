error handling
errorIconForm

	^ Form fromBinaryStream: (Base64MimeConverter mimeDecodeToBytes: IconMorph default readStream)