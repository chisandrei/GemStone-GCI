tests 3.3.x
testExecuteStringFetchBytes1
	| resultString |
	self session gciVersion < '3.3.0' asMetacelloVersionNumber
		ifTrue: [ ^ self ].	"only applies to version 3.3.0 and above"
	resultString := self session
		executeStringFetchBytes: '''hello world'''
		bufferSize: 20.
	self assert: resultString = 'hello world'