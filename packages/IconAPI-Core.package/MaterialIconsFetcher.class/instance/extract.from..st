accessing
extract: anID from: aDirectory

	|subdirectories picture|
	
	subdirectories := aDirectory directoryEntries.
	picture := subdirectories last asFileDirectory fileEntries last.
	picture copyTo: aDirectory.
	subdirectories do: [:subdirectory | subdirectory asFileDirectory recursiveDelete].
	aDirectory rename: picture name toBe: anID,'.png'