*GemStone-GCI-Core
gciResultToGsOopType: aGciSession
	^ aGciSession getGciErrSType ifNil: [ GsGciOopType oopNil ] ifNotNil: [ :gci32xErrSType | gci32xErrSType ]