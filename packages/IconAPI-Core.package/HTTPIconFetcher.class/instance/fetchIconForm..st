as yet unclassified
fetchIconForm: anID

	|download|
	
	(self directory fileExists: anID,'.png') ifTrue: [^ self formFrom: anID]. 	
	download := self downloadFileWith: anID.
	self processFile: download with: anID.
	^ self formFrom: anID
