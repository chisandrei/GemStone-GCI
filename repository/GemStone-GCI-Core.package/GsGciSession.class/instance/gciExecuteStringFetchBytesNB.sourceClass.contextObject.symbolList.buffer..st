gci api - non-blocking 3.3.x
gciExecuteStringFetchBytesNB: source sourceClass: sourceClassOopType contextObject: contextObjectOopType symbolList: symbolListOopType buffer: aStringOrByteArray
	"Only available in GemStone 3.3.x and beyond"

	self checkSession.
	self gciLibrary
		critical: [ :lib | 
			lib
				apiGciSetSessionId: gciSessionNumber;
				apiGciNbExecuteStrFetchBytes: source
					a: source size
					a: sourceClassOopType
					a: contextObjectOopType
					a: symbolListOopType
					a: aStringOrByteArray
					a: aStringOrByteArray size ]