tests
testClientForwarderSend1
	| pureExportSetReport |
	self clientForwarder.	"trigger object creation"
	pureExportSetReport := self session
		executeString:
			'STON toString: ((System hiddenSetAsArray: 39) collect: [:each | {Reflection oopOf:  each. (Reflection classOf:  each) printString} ])'.
	self assert: (self session send: #send1 to: self clientForwarder)