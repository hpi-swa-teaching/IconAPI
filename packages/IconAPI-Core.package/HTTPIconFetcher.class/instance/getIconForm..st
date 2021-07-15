as yet unclassified
getIconForm: anID

	|download fetchBlock|
	
	(self directory fileExists: anID,'.png') ifTrue: [^ self formFrom: anID]. 	
		
	fetchBlock := [	
		download := self downloadFileWith: anID.
		self processFile: download with: anID.
		^ self formFrom: anID].
	fetchBlock on: Error do: [:exception |
		self notifyIconNotFound: anID.
		^ self class errorIconForm]