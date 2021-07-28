fetching
processFile: aStream with: aString

	|archive|

	archive := ZipArchive new.
	archive readFrom: aStream.
	archive extractAllTo: self directory.
	self extractFileNamed: aString from: self directory