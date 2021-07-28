fetching
downloadFileWith: aString

	|version|
	
	version := self searchVersionOf: aString.
	^ HTTPSocket httpGet: (self urlPrefix), aString, '/v', version asString, (self urlSuffix)