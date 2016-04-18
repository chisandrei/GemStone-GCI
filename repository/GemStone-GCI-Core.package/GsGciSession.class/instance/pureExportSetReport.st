api
pureExportSetReport
	^ self
		executeString:
			'STON toString: ((System hiddenSetAsArray: 39) collect: [:each | {Reflection oopOf:  each. (Reflection classOf:  each) printString} ])'