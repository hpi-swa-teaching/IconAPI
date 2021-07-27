fetching
downloadFileWith: anID

	|url|
	
	url := self extractURLwith: anID.
	^ HTTPSocket httpGet: url

