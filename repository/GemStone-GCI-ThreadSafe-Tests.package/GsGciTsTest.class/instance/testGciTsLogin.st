tests
testGciTsLogin
	"execute without error"

	| session |
	session := GsGciTsSession login: GsGciSessionDescription testingSessionDescription.
	session logout