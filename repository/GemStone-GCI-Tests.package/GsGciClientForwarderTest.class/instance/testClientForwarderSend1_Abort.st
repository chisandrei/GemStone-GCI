tests
testClientForwarderSend1_Abort
	| sendResult cf sentinel |
	cf := self clientForwarder.	"trigger client forwarder object creation"
	self session registerClientObjectForwarderOopType: cf for: self.
	sentinel := #sentinel.
	sendResult := [ self session send: #clientForwarderSend1 to: self serverObj ]
		on: GsGciClientForwarderSend
		do: [ :ex | 
			ex
				resume:
					{#abort.
					sentinel} ].
	self assert: sendResult equals: sentinel