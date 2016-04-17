tests
testClientForwarderSend1
	self assert: (self session send: #send1 to: self clientForwarder)