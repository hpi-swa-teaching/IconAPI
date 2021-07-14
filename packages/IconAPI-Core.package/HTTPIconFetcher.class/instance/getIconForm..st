as yet unclassified
getIconForm: anID

	|download|
	
	(self directory fileExists: anID,'.png') ifFalse: [		
		download := self downloadFileWith: anID.
		
		download isString
			ifTrue: [
				self notifyIconNotFound: anID.
				^ self class errorIconForm]
			ifFalse: [
				self processFile: download with: anID]].
	^ self formFrom: anID