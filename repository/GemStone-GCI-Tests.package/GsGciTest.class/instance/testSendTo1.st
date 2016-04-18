tests
testSendTo1
	| result |
	result := self session send: #size to: 'abc'.
	self assert: result = 3