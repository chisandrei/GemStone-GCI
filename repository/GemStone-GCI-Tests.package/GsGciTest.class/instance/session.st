sessions
session
	^ Smalltalk
		at: #SCIGemStoneServerConfigSpec
		ifPresent: [ :cl | (GsDevKitSession forSessionNamed: cl defaultSessionName) session ]
		ifAbsent: [ GsGciSession login: GsGciSessionDescription testingSessionDescription ]