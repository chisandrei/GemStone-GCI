tests
testClientForwarderSend3_1
	| sendResult |
	self session registerClientObjectForwarderOopType: self clientForwarder for: self.
	sendResult := self session
		send: #clientForwarderSend3:
		to: self serverObj
		withArgs: {#send3}.
	self assert: sendResult.
	sendResult := self session send: #clientForwarderSend3: to: self serverObj withArgs: {#xxx}.
	self deny: sendResult