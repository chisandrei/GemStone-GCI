tests
testLocalByteObjects
	{('''hello world''' -> 'hello world').
	('''élève en Français''' -> 'élève en Français').
	('#[ 1 ]' -> #[1])}
		do: [ :assoc | 
			| local |
			local := self session executeString: assoc key.
			self assert: local = assoc value ]