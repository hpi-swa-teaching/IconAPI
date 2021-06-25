as yet unclassified
getIconForm: anID

	|download|
	
	(self directory fileExists: anID,'.png') ifFalse: [		
		download := self downloadFileWith: anID.
		self processFile: download with: anID].

	^ self formFrom: anID