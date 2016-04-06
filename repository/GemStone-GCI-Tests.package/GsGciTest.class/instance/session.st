sessions
session
	"SCIGemStoneServerConfigSpec defaultSessionName: 'voyage_330'"

	theSession := (Smalltalk at: #SCIGemStoneServerConfigSpec ifAbsent: [  ])
		ifNotNil: [ :cl | (GsDevKitSession forSessionNamed: cl defaultSessionName) session ]
		ifNil: [ GsGciSession login: GsGciSessionDescription testingSessionDescription ].
	^ theSession