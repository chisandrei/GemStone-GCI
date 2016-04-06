sessions
sessionDescription
	^ (Smalltalk at: #SCIGemStoneServerConfigSpec ifAbsent: [  ])
		ifNotNil: [ :cl | GsDevKitSession sessionDescriptionForSessionNamed: cl defaultSessionName ]
		ifNil: [ GsGciSessionDescription testingSessionDescription ]