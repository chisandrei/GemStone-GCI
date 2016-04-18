tests
testExceptions
	| result |
	result := self session executeString: '1'.
	self assert: result = 1.
	self should: [ self session executeString: '1 foo' ] raise: GsGciError 