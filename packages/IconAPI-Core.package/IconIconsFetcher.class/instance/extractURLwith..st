as yet unclassified
extractURLwith: anID

	|htmlDoc matcher|

	htmlDoc := (self urlPrefix, anID, self urlSuffix) asUrl retrieveContents.
	matcher := RxMatcher forString: 'https.{0,200}', anID, '\.png'.
	^ (matcher matchesIn: htmlDoc content) first
