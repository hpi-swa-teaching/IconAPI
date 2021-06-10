accessing
fetchFromMaterialIcons: anIcon

	|gzip a directory|
	
	directory := FileDirectory uri: 'Icons/MaterialIcons'.
	(self exists: anIcon in: directory) ifTrue: [^ self].		

	gzip := HTTPSocket httpGet: 'https://fonts.gstatic.com/s/i/materialicons/', anIcon, '/v5/black-24dp.zip'.
	a := ZipArchive new.
	a readFrom: gzip.
	a extractAllTo: directory.
	
	self extract: anIcon from: directory.
	
	
	