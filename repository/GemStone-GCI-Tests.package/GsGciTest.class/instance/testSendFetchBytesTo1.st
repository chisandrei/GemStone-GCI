tests
testSendFetchBytesTo1
	| result |
	result := self session sendFetchBytes: #yourself to: 'abc'.
	self assert: result = 'abc'