fetching
searchVersionOf: aString 

	 |offset stream version iconsDictionary|
	
	offset := 6.
	stream := HTTPSocket httpGet: 'https://fonts.google.com/metadata/icons'.
	stream := stream contents copyFrom: offset to: stream contents size.
	iconsDictionary := Json readFrom: stream readStream.
	version := 1.
	(iconsDictionary at: #icons) do: [:dictionary | (dictionary at: #name) = aString ifTrue: [version := dictionary at: #version]].
	^ version