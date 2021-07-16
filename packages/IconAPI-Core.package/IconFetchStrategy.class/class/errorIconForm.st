as yet unclassified
errorIconForm

	^ Form fromBinaryStream: (Base64MimeConverter mimeDecodeToBytes: (IconMorph default readStream))