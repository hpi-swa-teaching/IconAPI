as yet unclassified
getIconForm: anID

	|zip archive|
	
	(self directory fileExists: anID,'.png') ifFalse: [		
		zip := HTTPSocket httpGet: (self urlPrefix), anID, (self urlSuffix).
		archive := ZipArchive new.
		archive readFrom: zip.
		archive extractAllTo: self directory.
	
		self extract: anID from: self directory.
	].

	^ self formFrom: anID