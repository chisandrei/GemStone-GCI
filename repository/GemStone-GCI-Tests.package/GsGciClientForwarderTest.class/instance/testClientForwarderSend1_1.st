tests
testClientForwarderSend1_1
	| sendResult cf |
	cf := self clientForwarder.	"trigger client forwarder object creation"
	self session registerClientObjectForwarderOopType: cf for: self.
	sendResult := self session send: #clientForwarderSend1 to: self serverObj.
	self assert: sendResult