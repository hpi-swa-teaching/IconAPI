accessing
searchVersion: anID 

	 |stream version iconsDictionary|
	
	stream := HTTPSocket httpGet: 'https://fonts.google.com/metadata/icons'.
	stream := stream contents copyFrom: 6 to: stream contents size.
	
	iconsDictionary := Json readFrom: stream readStream.
	version := 1.
	(iconsDictionary at: #icons) do: [:dictionary | (dictionary at: #name) = anID ifTrue: [version := dictionary at: #version]].
	
	^ version