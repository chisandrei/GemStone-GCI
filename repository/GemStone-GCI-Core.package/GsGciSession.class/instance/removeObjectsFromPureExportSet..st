api
removeObjectsFromPureExportSet: arrayOfObjs
	| theOops |
	theOops := arrayOfObjs collect: [ :each | each localObjectToGciOopType: self ].
	self gciReleaseOops: theOops