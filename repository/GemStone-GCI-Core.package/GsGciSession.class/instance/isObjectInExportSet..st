api
isObjectInExportSet: aGsGciOopType
	^ self
		executeString:
			'System testIf: (Object _objectForOop: ' , aGsGciOopType asInteger printString
				, ' ) isInHiddenSet: 39'