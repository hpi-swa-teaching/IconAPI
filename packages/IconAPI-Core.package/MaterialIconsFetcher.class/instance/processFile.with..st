accessing
processFile: download with: anID

	|archive|

	archive := ZipArchive new.
	archive readFrom: download.
	archive extractAllTo: self directory.
	self extract: anID from: self directory