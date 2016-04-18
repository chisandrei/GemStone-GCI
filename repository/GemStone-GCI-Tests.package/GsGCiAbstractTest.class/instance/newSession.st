sessions
newSession
	"SCIGemStoneServerConfigSpec defaultSessionName: 'voyage_330'"

	^ (Smalltalk at: #SCIGemStoneServerConfigSpec ifAbsent: [  ])
		ifNotNil: [ :cl | (GsDevKitSession forSessionNamed: cl defaultSessionName) session ]
		ifNil: [ GsGciSession login: GsGciSessionDescription testingSessionDescription ]