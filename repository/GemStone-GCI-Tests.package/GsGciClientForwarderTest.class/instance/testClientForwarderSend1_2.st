tests
testClientForwarderSend1_2
	"don't register any client forwarder"

	| sendResult sentinel |
	self clientForwarder.	"trigger client forwarder object creation"
	sentinel := #sentinel. 
	sendResult := [ self session send: #clientForwarderSend1 to: self serverObj ]
		on: GsGciNoClientForwarderFound
		do: [ :ex | ex resume: sentinel ].
	self assert: sendResult equals: sentinel