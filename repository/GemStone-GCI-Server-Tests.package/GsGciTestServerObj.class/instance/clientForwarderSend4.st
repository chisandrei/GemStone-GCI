client forwarder tests
clientForwarderSend4
  ^ self clientForwarder clientForwarderSend1
    ifTrue: [ 123 ]
    ifFalse: [ 0 ]