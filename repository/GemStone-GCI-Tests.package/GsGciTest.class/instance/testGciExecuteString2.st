tests
testGciExecuteString2
	| resultOopType |
	resultOopType := self session gciExecuteString: 'nil'.
	self assert: resultOopType = GsGciOopType oopNil