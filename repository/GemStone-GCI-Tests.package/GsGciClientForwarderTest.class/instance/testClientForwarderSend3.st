tests
testClientForwarderSend3
	| sendResult cf |
	cf := self clientForwarder.	"trigger client forwarder object creation"
	self session registerClientObjectForwarderOopType: cf for: self.
	sendResult := [ self session send: #clientForwarderSend1 to: self serverObj ]
		on: GsGciClientForwarderSend
		do: [ :ex | self halt ].
	self assert: sendResult