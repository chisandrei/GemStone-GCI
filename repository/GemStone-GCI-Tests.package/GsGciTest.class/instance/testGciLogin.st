tests
testGciLogin
	"execute without error"

	| session |
	session := GsGciSession login: GsGciSessionDescription testingSessionDescription.
	session logout