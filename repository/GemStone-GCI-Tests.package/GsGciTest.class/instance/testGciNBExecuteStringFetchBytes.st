tests
testGciNBExecuteStringFetchBytes
	| resultString limit count buffer |
	self session gciVersion < '3.3.0' asMetacelloVersionNumber
		ifTrue: [ ^ self ].	"only applies to version 3.3.0 and above"
	limit := 10.
	count := 0.
	buffer := String new: 20.
	self session
		gciExecuteStringFetchBytesNB: 'GsGciTestServerObj getSTONArrayString'
		buffer: buffer.
	self assert: self session gciCallInProgress.
	[ self session
		gciNbEnd_OnNotReady: [ :progress | false	"continue polling" ]
		onReadyRaw: [ :resultSize | 
			resultString := buffer copyFrom: 1 to: resultSize.
			true	"got our result" ]
		onError:
			[ :gci32xErrSType | self fail: 'Unexpected error: ' , gci32xErrSType printString	"not supposed to happen" ] ]
		whileFalse: [ count > limit
				ifTrue: [ self fail: 'Timed out'.
					count := count + 1 ].
			(Delay forMilliseconds: 250) wait ].
	self assert: (STON fromString: resultString) = {1 . 2 . 3}