*GemStone-GCI-Core
gsGciPerformFromServer: aSelector with: messageArgsOopType using: aGsGciSession
	| messageArgs |
	^ aSelector numArgs == 0
		ifTrue: [ self perform: aSelector ]
		ifFalse: [ messageArgs := messageArgsOopType.
			messageArgs isArray
				ifFalse: [ | argCount argsOopType |
					argsOopType := messageArgsOopType.
					argCount := aGsGciSession send: #size to: argsOopType withArgs: #().
					messageArgs := Array new: argCount.
					1 to: argCount do:
						[ :i | messageArgs at: i put: (aGsGciSession send: #at: to: argsOopType withArgs: {i}) ] ].
			self perform: aSelector withArguments: messageArgs ]