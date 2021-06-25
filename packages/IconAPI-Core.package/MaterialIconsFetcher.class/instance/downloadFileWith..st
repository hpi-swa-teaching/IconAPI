accessing
downloadFileWith: anID

	|maxVersion|
	
	maxVersion := 1.
	1 to: 25 do: [:version | 
		|download|
		download := HTTPSocket httpGet: (self urlPrefix), anID, '/v', version asString, (self urlSuffix).
		download isStream ifTrue: [maxVersion := version]].	

	^ HTTPSocket httpGet: (self urlPrefix), anID, '/v', maxVersion asString, (self urlSuffix)