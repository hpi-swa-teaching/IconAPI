interface
getIconForm: anID

	[^ self fetchIconForm: anID] on: Error do: [:exception |
		self notifyIconNotFound: anID.
		^ self class errorIconForm]