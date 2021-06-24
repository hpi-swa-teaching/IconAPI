accessing
exists: anIcon in: aDirectory

	aDirectory assureExistence.
	^ aDirectory fileExists: anIcon,'.png'
	
	
	