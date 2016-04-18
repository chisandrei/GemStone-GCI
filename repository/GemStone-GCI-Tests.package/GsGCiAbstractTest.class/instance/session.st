sessions
session
	"SCIGemStoneServerConfigSpec defaultSessionName: 'voyage_330'"

	^ theSession ifNil: [ theSession := self newSession ]