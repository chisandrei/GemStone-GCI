*GemStone-GCI-Pharo5x-Core
getGciErrSType
	| gci32xErrSType |
	gci32xErrSType := GsGci32xErrSType externalNew autoRelease.
	(self gciErr: gci32xErrSType)
		ifFalse: [ 
			"no error present"
			^ nil ].
	^gci32xErrSType