accessing
getIconList

	|stream iconNames iconsDictionary|
	
	stream := HTTPSocket httpGet: 'https://fonts.google.com/metadata/icons'.
	stream := stream contents copyFrom: 6 to: stream contents size.
	iconsDictionary := Json readFrom: stream readStream.
	iconNames := (iconsDictionary at: #icons) collect: [:dictionary | dictionary at: #name].
	
	^ iconNames