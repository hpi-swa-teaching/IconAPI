fetching
extractFileNamed: aString from: aFileDirectory

	|subdirectories picture|
	
	picture := (aFileDirectory directoryNamed: '2x') fileEntries last.
	picture copyTo: aFileDirectory.
	subdirectories := aFileDirectory directoryEntries.
	subdirectories do: [:subdirectory | subdirectory asFileDirectory recursiveDelete].
	aFileDirectory rename: picture name toBe: aString, '.png'