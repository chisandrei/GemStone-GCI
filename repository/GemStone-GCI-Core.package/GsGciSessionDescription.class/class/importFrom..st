instance creation
importFrom: filepath
	[ FileStream
		readOnlyFileNamed: filepath
		do: [ :fileStream | ^ STON fromStream: fileStream ] ]
		on: FileDoesNotExistException
		do: [ :ex | 
			self
				error:
					'The session description file ' , ex fileName printString
						, ' cannot be found.' ]