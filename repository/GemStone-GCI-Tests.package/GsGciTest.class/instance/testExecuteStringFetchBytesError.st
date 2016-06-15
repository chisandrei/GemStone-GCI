tests 3.3.x
testExecuteStringFetchBytesError
	self session gciVersion < '3.3.0' asMetacelloVersionNumber
		ifTrue: [ ^ self ].	"only applies to version 3.3.0 and above"
	self
		should: [ self session executeStringFetchBytes: '1 foo' bufferSize: 20 ]
		raise: GsGciError