gci api
gciStep: processOopType level: level
	self checkSession.
	self gciLibrary
		critical: [ :lib | 
			| result |
			result := lib
				apiGciSetSessionId: gciSessionNumber;
				apiGciStep: processOopType a: level.
			^ result asInteger = 1
				ifTrue: [ nil gciResultToGsOopType: self ]
				ifFalse: [ result gciResultToGsOopType: self ] ]