accessing
messageAsString
	"The instVar 'message' is an instance of FFITypeArray whose #printOn: is very generic. Therefore, we convert that into a nice string "
	^ String streamContents: [ :s | (self message asArray copyUpTo: Character null) do: [ :aChar | s nextPut: aChar ]]