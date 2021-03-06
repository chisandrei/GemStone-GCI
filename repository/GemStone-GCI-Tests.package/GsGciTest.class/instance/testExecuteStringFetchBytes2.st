tests 3.3.x
testExecuteStringFetchBytes2
	| resultString |
	self session gciVersion < '3.3.0' asMetacelloVersionNumber
		ifTrue: [ ^ self ].	"only applies to version 3.3.0 and above"
	resultString := self session
		executeStringFetchBytes: 'STON toString: {1. 2. 3}'
		bufferSize: 20.
	self assert: (STON fromString: resultString) = {1 . 2 . 3}