gci api
gciStep: processOopType level: level through: throughBool
	self checkSession.
	self gciLibrary
		critical: [ :lib | 
			| result through |
			through := throughBool
				ifTrue: [ 1 ]
				ifFalse: [ 0 ].
			result := lib
				apiGciSetSessionId: gciSessionNumber;
				apiGciStep: processOopType a: level a: through.
			^ result asInteger = 1
				ifTrue: [ nil gciResultToGsOopType: self ]
				ifFalse: [ result gciResultToGsOopType: self ] ]