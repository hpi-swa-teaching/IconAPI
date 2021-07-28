fetching
fetchIconFormWith: aString

	|path|
	
	path := (self directory / (aString, '.png')) fullName.
	^ PNGReadWriter formFromFileNamed: path
