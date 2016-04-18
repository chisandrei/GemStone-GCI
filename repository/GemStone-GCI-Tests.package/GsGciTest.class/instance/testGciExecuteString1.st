tests
testGciExecuteString1
	| resultOopType |
	resultOopType := self session gciExecuteString: 'String'.
	self assert: resultOopType = GsGciOopType oopClassString