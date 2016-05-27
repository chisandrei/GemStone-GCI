tests 3.3.x
testGciExecuteStringFetchBytes1
	| resultString |
	self session gciVersion < '3.3.0' asMetacelloVersionNumber
		ifTrue: [ ^ self ].	"only applies to version 3.3.0 and above"
	resultString := self session
		gciExecuteStringFetchBytes: '''hello world'''
		maxResultSize: 20.
	self assert: resultString = 'hello world'