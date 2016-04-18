tests
testGciFetchObjImpl
	{('Object new' -> 0).
	('''str''' -> 1).
	('Set new' -> 2).
	('1' -> 3)}
		do: [ :assoc | 
			| resultOopType objImpl |
			resultOopType := self session gciExecuteString: assoc key.
			objImpl := self session gciFetchObjImpl: resultOopType.
			self assert: objImpl = assoc value ]