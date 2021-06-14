accessing
fetch: anIcon fromLibrary: aLibrary

	|gzip a directory|
	
	directory := FileDirectory uri: 'Icons/', aLibrary.
	(self exists: anIcon in: directory) ifTrue: [^ self].		

	gzip := HTTPSocket httpGet: 'https://fonts.gstatic.com/s/i/materialicons/', anIcon, '/v1/black-48dp.zip'.
	a := ZipArchive new.
	a readFrom: gzip.
	a extractAllTo: directory.
	
	self extract: anIcon from: directory
	
