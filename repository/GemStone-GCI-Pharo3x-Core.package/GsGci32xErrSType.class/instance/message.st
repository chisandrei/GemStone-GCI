accessing
message
	"manually patched ... was 116 -- new value matches Pharo5.0 value"

	^ (handle copyFrom: 114 to: 114 + 1024) asString copyUpTo: Character null