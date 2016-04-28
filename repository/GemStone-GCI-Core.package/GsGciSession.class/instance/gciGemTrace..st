gci api
gciGemTrace: level
	self checkSession.
	self gciLibrary
		critical: [ :lib | 
			^ lib
				apiGciSetSessionId: gciSessionNumber;
				apiGciGemTrace: level ]