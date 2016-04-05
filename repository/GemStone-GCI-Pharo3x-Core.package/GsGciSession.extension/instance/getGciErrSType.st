*GemStone-GCI-Pharo3x-Core
getGciErrSType
	| gci32xErrSType |
	gci32xErrSType := GsGci32xErrSType new.
	(self gciErr: gci32xErrSType)
		ifFalse: [ 
			"no error present"
			^ nil ].
	^gci32xErrSType