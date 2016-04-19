tests
testClientForwarderSend4_1
	| sendResult |
	self session registerClientObjectForwarderOopType: self clientForwarder for: self.
	sendResult := self session
		send: #clientForwarderSend4
		to: self serverObj
		withArgs: {}.
	self assert: sendResult = 123.
