fetching
notifyFailedFetchWith: aString

	|newline text|
	
	newline := Character cr asString.
	text := 'Fetching failed. ', newline, newline, 'Icon with id "', aString, '" is not available in ', self class asString, newline, ' OR', newline, 'there has been an exception while trying to fetch.'.
	PopUpMenu inform: text
