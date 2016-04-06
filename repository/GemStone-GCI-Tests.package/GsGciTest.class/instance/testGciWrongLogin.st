tests
testGciWrongLogin
	"execute without error"

	| wrongSessionDesc |
	wrongSessionDesc := self session.
	wrongSessionDesc password: 'wrongPassword'.
	self executeShould: [ GsGciSession login: wrongSessionDesc ] inScopeOf: Error withDescriptionContaining: 'the userId/password combination is invalid or expired'.