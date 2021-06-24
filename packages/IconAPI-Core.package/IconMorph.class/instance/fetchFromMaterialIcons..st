fetching
fetchFromMaterialIcons: anIcon

	|zip archive directory|
	
	directory := (FileDirectory uri: 'Icons')/'MaterialIcons'.
	(self exists: anIcon in: directory) ifTrue: [^ self].		

	zip := HTTPSocket httpGet: 'https://fonts.gstatic.com/s/i/materialicons/', anIcon, '/v1/black-48dp.zip'.
	archive := ZipArchive new.
	archive readFrom: zip.
	archive extractAllTo: directory.
	
	self extract: anIcon from: directory
	
