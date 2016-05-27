tests 3.3.x
testGciExecuteStringFetchBytes2
	| resultString |
	self session gciVersion < '3.3.0' asMetacelloVersionNumber
		ifTrue: [ ^ self ].	"only applies to version 3.3.0 and above"
	resultString := self session
		gciExecuteStringFetchBytes: 'STON toString: {1. 2. 3}'
		maxResultSize: 20.
	self assert: (STON fromString: resultString) = {1 . 2 . 3}