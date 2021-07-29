interface
getIconList

	|offset stream iconNames iconsDictionary|
	
	offset := 6.
	stream := HTTPSocket httpGet: 'https://fonts.google.com/metadata/icons'.
	stream := stream contents copyFrom: offset to: stream contents size.
	iconsDictionary := Json readFrom: stream readStream.
	iconNames := (iconsDictionary at: #icons) collect: [:dictionary | dictionary at: #name].
	^ iconNames