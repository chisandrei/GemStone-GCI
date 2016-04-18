tests
testClientForwarderSend2_1
	self session registerClientObjectForwarderOopType: self clientForwarder for: self.
	self
		should: [ self session send: #clientForwarderSend2 to: self serverObj ]
		raise: MessageNotUnderstood