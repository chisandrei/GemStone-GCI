tests 3.3.x
testExecuteStringFetchBytesRaw
	| rawBuffer |
	self session gciVersion < '3.3.0' asMetacelloVersionNumber
		ifTrue: [ ^ self ].	"only applies to version 3.3.0 and above"
	rawBuffer := String new: 100.
	self session executeStringFetchBytes: 'STON toString: { 1. 2. 3}' rawBuffer: rawBuffer.
	self assert: (STON fromString: rawBuffer) = {1 . 2 . 3}.
	self session
		executeStringFetchBytes: 'STON toString: { 1. 2. 3. 4. 5. 6 }'
		rawBuffer: rawBuffer.
	self assert: (STON fromString: rawBuffer) = {1 . 2 . 3 . 4 . 5 . 6}.
	self session executeStringFetchBytes: 'STON toString: { 1. 2. 3}' rawBuffer: rawBuffer.
	self assert: (STON fromString: rawBuffer) = {1 . 2 . 3}