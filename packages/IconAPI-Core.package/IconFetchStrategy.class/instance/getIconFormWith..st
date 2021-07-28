interface
getIconFormWith: aString

	[^ self fetchIconFormWith: aString] on: Error do: [:exception |
		self notifyFailedFetchWith: aString.
		^ self class errorIconForm]