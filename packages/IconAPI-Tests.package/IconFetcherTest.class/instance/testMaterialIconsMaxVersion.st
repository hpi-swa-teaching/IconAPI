as yet unclassified
testMaterialIconsMaxVersion

	|compareVersion form fetcher compareForm|
	
	fetcher := MaterialIconsFetcher new.
	
	fetcher directory 
		deleteFileNamed: 'thumb_down.png';
		deleteFileNamed: 'thumb_down_max.png'.
	
	compareVersion := HTTPSocket httpGet: 'https://fonts.gstatic.com/s/i/materialiconsoutlined/thumb_down/v16/black-48dp.zip'.
	fetcher processFile: compareVersion with: 'thumb_down_max'.
	form := fetcher getIconForm: 'thumb_down'.
	compareForm := fetcher formFrom: 'thumb_down_max'.
	
	self assert: compareForm bits = form bits
	
	
	