gci api - 3.3.1.x
gciPerformFetchBytes: receiverOopType selector: selector args: arrayOfGsOopTypes maxResultSize: maxResultSize
	"Only available in GemStone 3.3.1.x and beyond"

	self checkSession.
	self gciLibrary
		critical: [ :lib | 
			| result address callResult |
			lib apiGciSetSessionId: gciSessionNumber.
			address := lib addressOfArrayOfOopsForGsOopTypes: arrayOfGsOopTypes.
			result := String new: maxResultSize.
			callResult := lib
				apiGciPerformFetchBytes: receiverOopType
				a: selector asString
				a: address asInteger
				a: arrayOfGsOopTypes size
				a: result
				a: maxResultSize.
			^ callResult == -1
				ifTrue: [ nil gciResultToGsOopType: self	"error" ]
				ifFalse: [ result copyFrom: 1 to: callResult	"result" ] ]