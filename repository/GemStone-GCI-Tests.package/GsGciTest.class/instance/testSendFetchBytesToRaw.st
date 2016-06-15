tests
testSendFetchBytesToRaw
	| resultSize buffer |
	self session gciVersion < '3.3.1' asMetacelloVersionNumber
		ifTrue: [ ^ self ].	"only applies to version 3.3.1 and above"
	buffer := String new: 100.
	resultSize := self session
		sendFetchBytes: #yourself
		to: 'abc'
		withArgs: #()
		rawBuffer: buffer.
	self assert: (buffer copyFrom: 1 to: resultSize) = 'abc'