gci api - 3.3.x
gciExecuteStringFetchBytes: source sourceClass: sourceClassOopType contextObject: contextObjectOopType symbolList: symbolListOopType rawBuffer: aStringOrByteArray
	"Only available in GemStone 3.3.x and beyond"

	self checkSession.
	self gciLibrary
		critical: [ :lib | 
			|  callResult |
			callResult := lib
				apiGciSetSessionId: gciSessionNumber;
				apiGciExecuteStrFetchBytes: source
					a: source size
					a: sourceClassOopType
					a: contextObjectOopType
					a: symbolListOopType
					a: aStringOrByteArray
					a: aStringOrByteArray size.
			^ callResult == -1
				ifTrue: [ nil gciResultToGsOopType: self	"error" ]
				ifFalse: [ callResult	"size of response" ] ]