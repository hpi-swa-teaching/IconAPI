packages
namedPackage: aString
	
	|errorMessage|
	
	errorMessage := aString, ' package is missing'.
	^ PackageOrganizer default packageNamed: aString ifAbsent: [self error: errorMessage]