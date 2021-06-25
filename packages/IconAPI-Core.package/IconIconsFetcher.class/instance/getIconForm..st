as yet unclassified
getIconForm: anID

	|download url|
	
	(self directory fileExists: anID,'.png') ifFalse: [		
		url := self extractURLwith: anID.
		download := HTTPSocket httpGet: url.
		self processFile: download with: anID].

	^ self formFrom: anID