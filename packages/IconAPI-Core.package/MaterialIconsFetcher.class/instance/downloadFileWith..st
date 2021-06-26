accessing
downloadFileWith: anID

	|currentHighestVersion|
	
	currentHighestVersion := 1.
	1 to: self maxVersion do: [:version | 
		|download|
		download := HTTPSocket httpGet: (self urlPrefix), anID, '/v', version asString, (self urlSuffix).
		download isStream ifTrue: [currentHighestVersion := version]].	

	^ HTTPSocket httpGet: (self urlPrefix), anID, '/v', currentHighestVersion asString, (self urlSuffix)