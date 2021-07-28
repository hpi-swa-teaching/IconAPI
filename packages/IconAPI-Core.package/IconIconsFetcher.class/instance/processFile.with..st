fetching
processFile: aStream with: aString

	self directory putFile: aStream named: aString, '.png'
	
