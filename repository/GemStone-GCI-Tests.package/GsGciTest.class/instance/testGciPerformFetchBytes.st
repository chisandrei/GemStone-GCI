tests 3.3.1.x
testGciPerformFetchBytes
	| resultString gciTestServerClassOopType |
	self session gciVersion < '3.3.1' asMetacelloVersionNumber
		ifTrue: [ ^ self ].	"only applies to version 3.3.1 and above"
	gciTestServerClassOopType := self session executeString: 'GsGciTestServerObj'.
	resultString := self session
		gciPerformFetchBytes: gciTestServerClassOopType
		selector: #getSTONArrayString
		args: #()
		bufferSize: 20.
	self assert: (STON fromString: resultString) = #(1 2 3)