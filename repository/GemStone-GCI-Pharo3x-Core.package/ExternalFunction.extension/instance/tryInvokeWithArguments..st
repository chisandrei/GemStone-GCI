*GemStone-GCI-Pharo3x-Core
tryInvokeWithArguments: argArray
	"Sent from the debugger to simulate an FFI call."
	<primitive: 'primitiveCalloutWithArgs' module:'SqueakFFIPrims'>
	^Context primitiveFailToken