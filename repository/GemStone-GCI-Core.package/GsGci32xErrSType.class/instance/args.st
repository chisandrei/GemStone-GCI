accessing structure variables
args
	"This method was automatically generated"
	^(FFITypeArray ofType: #FFIExternalStructureType size: 10) fromHandle: (handle copyFrom: 25 to: 104)