fetching
downloadFileWith: aString

	|url|
	
	url := self extractURLwith: aString.
	^ HTTPSocket httpGet: url

