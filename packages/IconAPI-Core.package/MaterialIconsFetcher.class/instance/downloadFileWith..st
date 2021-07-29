fetching
downloadFileWith: aString

	|version url|
	
	version := self searchVersionOf: aString.
	url := self urlPrefix, aString, '/v', version asString, self urlSuffix.
	^ HTTPSocket httpGet: url