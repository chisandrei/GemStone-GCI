initialize
initialize
	"self initialize"

	GsGciOopType10 := FFITypeArray ofType: 'GsGciOopType' size: 10.
	Char1025 := FFITypeArray ofType: 'char' size: 1025.
	self initializeErrorToExceptionMap