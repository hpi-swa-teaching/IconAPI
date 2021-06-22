as yet unclassified
getIconForm: anID

	|gzip archive|
	
	(self directory fileExists: anID,'.png') ifFalse: [		
		gzip := HTTPSocket httpGet: (self urlPrefix), anID, (self urlSuffix).
		archive := ZipArchive new.
		archive 
			readFrom: gzip;
			extractAllTo: self directory.
	
		self extract: anID from: self directory].

	^ self formFrom: anID
