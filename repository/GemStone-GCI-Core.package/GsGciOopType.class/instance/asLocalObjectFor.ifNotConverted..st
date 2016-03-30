converting
asLocalObjectFor: aGciSession ifNotConverted: notConvertedBlock
	"we can create local objects for specials and byte objects"

	aGciSession gciLibrary
		critical: [ :lib | 
			| type |
			lib apiGciSetSessionId: aGciSession gciSessionNumber.
			type := lib apiGciFetchObjImpl: self.
			type = 1
				ifTrue: [ ^ self asLocalByteObj: aGciSession ].
			type = 3
				ifTrue: [ ^ self asLocalSpecialObj ].
			^ notConvertedBlock cull: self ]