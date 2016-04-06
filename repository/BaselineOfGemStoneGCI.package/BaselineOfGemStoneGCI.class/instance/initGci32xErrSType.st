doits
initGci32xErrSType
   "Pharo3.0 and Pharo4.0 FFI does not correctly define byteSize for Gci32xErrSType, so this addtional step is needed"

	(Smalltalk at: #GsGci32xErrSType) perform: #compileFields