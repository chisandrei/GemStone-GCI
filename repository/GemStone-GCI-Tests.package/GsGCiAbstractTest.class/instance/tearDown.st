running
tearDown
	super tearDown.
	theSession ifNotNil: [ theSession logout ]