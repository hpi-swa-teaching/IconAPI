fetching
extractURLwith: aString

	|htmlDoc regEx matcher|

	htmlDoc := (self urlPrefix, aString, self urlSuffix) asUrl retrieveContents.
	regEx := 'https.{0,200}', aString, '\.png'.
	matcher := RxMatcher forString: regEx.
	^ (matcher matchesIn: htmlDoc content) first
