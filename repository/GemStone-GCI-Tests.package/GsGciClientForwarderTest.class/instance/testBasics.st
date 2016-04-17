tests
testBasics
	self assert: (self serverObj isKindOf: GsGciOopType).
	self assert: (self clientForwarder isKindOf: GsGciOopType)