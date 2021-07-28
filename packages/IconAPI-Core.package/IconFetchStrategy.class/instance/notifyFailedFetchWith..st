fetching
notifyFailedFetchWith: aString

	PopUpMenu inform: 'Fetching failed. ', Character cr asString,  Character cr asString, 'Icon with id "', aString, '" is not available in ', self class asString,  Character cr asString,' OR', Character cr asString,'there has been an exception while trying to fetch.'
