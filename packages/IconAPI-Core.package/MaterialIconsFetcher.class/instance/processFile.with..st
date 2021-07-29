fetching
processFile: aStream with: aString

	ZipArchive new
		readFrom: aStream;
		extractAllTo: self directory.
	self extractFileNamed: aString from: self directory