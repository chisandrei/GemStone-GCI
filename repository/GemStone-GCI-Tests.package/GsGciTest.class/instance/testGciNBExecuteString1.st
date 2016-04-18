tests
testGciNBExecuteString1
	| resultOopType limit count |
	resultOopType := nil.
	limit := 10.
	count := 0.
	self session gciExecuteStringNB: 'String'.
	self assert: self session gciCallInProgress.
	[ self session
		gciNbEnd_OnNotReady: [ :progress | false ]
		onReady: [ :gsOopType | 
			resultOopType := gsOopType.
			true ]
		onError:
			[ :gci32xErrSType | self fail: 'Unexpected error: ' , gci32xErrSType printString ]
	"continue pollihg"
	"got our result"
	"not supposed to happen" ]
		whileFalse: [ count > limit
				ifTrue: [ self fail: 'Timed out'.
					count := count + 1 ].
			(Delay forMilliseconds: 250) wait ].
	self assert: resultOopType = GsGciOopType oopClassString