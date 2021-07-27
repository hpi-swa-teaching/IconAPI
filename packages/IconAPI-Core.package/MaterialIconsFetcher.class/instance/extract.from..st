fetching
extract: anID from: aDirectory

	|subdirectories picture|
	
	picture := (aDirectory directoryNamed: '2x') fileEntries last.
	picture copyTo: aDirectory.
	subdirectories := aDirectory directoryEntries.
	subdirectories do: [:subdirectory | subdirectory asFileDirectory recursiveDelete].
	aDirectory rename: picture name toBe: anID,'.png'