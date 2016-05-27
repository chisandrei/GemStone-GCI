gci api - 3.3.1.x
gciPerformFetchBytes: receiverOopType selector: selector args: arrayOfGsOopTypes buffer: aStringOrByteArray
	"Only available in GemStone 3.3.1.x and beyond"

	self checkSession.
	self gciLibrary
		critical: [ :lib | 
			|  address callResult |
			lib apiGciSetSessionId: gciSessionNumber.
			address := lib addressOfArrayOfOopsForGsOopTypes: arrayOfGsOopTypes.
			callResult := lib
				apiGciPerformFetchBytes: receiverOopType
				a: selector asString
				a: address asInteger
				a: arrayOfGsOopTypes size
				a: aStringOrByteArray
				a: aStringOrByteArray size.
			^ callResult == -1
				ifTrue: [ nil gciResultToGsOopType: self	"error" ]
				ifFalse: [ aStringOrByteArray copyFrom: 1 to: callResult	"result" ] ]