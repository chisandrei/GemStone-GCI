gci api - export set
gciReleaseOops: arrayOfGsOopTypes
	self checkSession.
	self gciLibrary
		critical: [ :lib | 
			| address |
			lib apiGciSetSessionId: gciSessionNumber.
			address := lib addressOfArrayOfOopsForGsOopTypes: arrayOfGsOopTypes.
			^ lib apiGciReleaseOops:  address asInteger a: arrayOfGsOopTypes size ]