running
tearDown
	super tearDown.
	theSession
		ifNotNil: [ | sess |
			sess := theSession.
			theSession := nil.
			sess logout ]