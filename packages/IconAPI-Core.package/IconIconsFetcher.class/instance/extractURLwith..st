fetching
extractURLwith: aString

	|htmlDoc matcher|

	htmlDoc := (self urlPrefix, aString, self urlSuffix) asUrl retrieveContents.
	matcher := RxMatcher forString: 'https.{0,200}', aString, '\.png'.
	^ (matcher matchesIn: htmlDoc content) first
