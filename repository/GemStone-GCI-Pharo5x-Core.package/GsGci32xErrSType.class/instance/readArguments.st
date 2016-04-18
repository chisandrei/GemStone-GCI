accessing
readArguments
	"The instVar 'args' does not produce a usable Array-lick object as #basicHandle:at: is not yet implemented"

	| argCount arguments ofs |
	argCount := self argCount.
	arguments := Array new: argCount.
	ofs := 25.	"extracted from #args method"
	1 to: argCount do: [ :index | 
		arguments
			at: index
			put: (GsGciOopType fromInteger: (self getHandle unsignedLongLongAt: ofs)).
		ofs := ofs + 8 ].
	^ arguments