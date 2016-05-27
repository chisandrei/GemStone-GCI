gci api - 3.3.x
gciExecuteStringFetchBytes: source sourceClass: sourceClassOopType contextObject: contextObjectOopType symbolList: symbolListOopType maxResultSize: maxResultSize
	"Only available in GemStone 3.3.x and beyond"

	self checkSession.
	self gciLibrary
		critical: [ :lib | 
			| result callResult |
			result := String new: maxResultSize.
			callResult := lib
				apiGciSetSessionId: gciSessionNumber;
				apiGciExecuteStrFetchBytes: source
					a: source size
					a: sourceClassOopType
					a: contextObjectOopType
					a: symbolListOopType
					a: result
					a: maxResultSize.
			^ callResult == -1
				ifTrue: [ nil gciResultToGsOopType: self	"error" ]
				ifFalse: [ result copyFrom: 1 to: callResult	"result" ] ]