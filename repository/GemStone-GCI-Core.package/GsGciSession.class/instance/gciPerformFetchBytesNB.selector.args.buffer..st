gci api - non-blocking 3.3.1.x
gciPerformFetchBytesNB: receiverOopType selector: selector args: arrayOfGsOopTypes buffer: aStringOrByteArray
	"Only available in GemStone 3.3.1.x and beyond"

	self checkSession.
	self gciLibrary
		critical: [ :lib | 
			| address |
			lib apiGciSetSessionId: gciSessionNumber.
			address := lib addressOfArrayOfOopsForGsOopTypes: arrayOfGsOopTypes.
			lib
				apiGciNbPerformFetchBytes: receiverOopType
				a: selector asString
				a: address asInteger
				a: arrayOfGsOopTypes size
				a: aStringOrByteArray
				a: aStringOrByteArray size ]