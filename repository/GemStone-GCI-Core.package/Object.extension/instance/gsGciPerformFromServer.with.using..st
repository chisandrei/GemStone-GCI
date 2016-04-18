*GemStone-GCI-Core
gsGciPerformFromServer: aSelector with: args using: aGsGciSession
	^ aSelector numArgs == 0
		ifTrue: [ self perform: aSelector ]
		ifFalse: [ | messageArgs |
			messageArgs := args.
			messageArgs isArray
				ifFalse: [ | argCount argsOop |
					argsOop := args.
					argCount := aGsGciSession send: #size to: argsOop withArgs: #().
					messageArgs := Array new: argCount.
					1 to: argCount do: [ :i | messageArgs at: i put: (aGsGciSession send: #at: to: argsOop withArgs: {i}) ] ].
			self perform: aSelector withArguments: messageArgs ]