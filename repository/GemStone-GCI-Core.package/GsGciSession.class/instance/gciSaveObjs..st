gci api - export set
gciSaveObjs: arrayOfGsOopTypes
	self checkSession.
	self gciLibrary
		critical: [ :lib | 
			| address |
			lib apiGciSetSessionId: gciSessionNumber.
			address := lib addressOfArrayOfOopsForGsOopTypes: arrayOfGsOopTypes.
			^ lib apiGciSaveObjs: address asInteger a: arrayOfGsOopTypes size ]