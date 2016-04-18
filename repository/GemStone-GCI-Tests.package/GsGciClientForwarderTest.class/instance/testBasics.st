tests
testBasics
	self assert: (self serverObj isKindOf: GsGciOopType).
	self assert: (self session isObjectInPureExportSet: self serverObj).
	self assert: (self clientForwarder isKindOf: GsGciOopType).
	self assert: (self session isObjectInPureExportSet: self clientForwarder)