gci api - 3.3.x
gciExecuteStringFetchBytes: source sourceClass: sourceClassOopType contextObject: contextObjectOopType symbolList: symbolListOopType buffer: aStringOrByteArray
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
				ifFalse: [ aStringOrByteArray copyFrom: 1 to: callResult	"result" ] ]