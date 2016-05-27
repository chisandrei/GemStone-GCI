API
apiGciExecuteStrFetchBytes: source a: sourceSize a: sourceClassOopType a: contextObjectOopType a: symbolListOopType a: result a: maxResultSize
"/* =============================================================================
 * GciExecuteStrFetchBytes
 *
 * Executes source and assuming the execution result is a byte format object,
 * returns that String in *result .
 *
 * Function result is the number of bytes returned in *result, 
 * or -1  if an error is available to be fetche with GciErr .
 *
 *  source       The string to be executed.
 *  sourceSize   the number of bytes in the 'source' array, usually strlen(source).
 *               if sourceSize == -1,  strlen(source) is used.
 *
 *  sourceClass  The OOP of the class that 'source' should be converted to.
 *                Examples are OOP_CLASS_STRING, OOP_CLASS_Utf8, OOP_CLASS_Unicode7 .
 *   contextObject
 *              The OOP of any GemStone object.  The code to be executed is
 *              compiled as if it were an instance method in the class of
 *              contextObject.
 *              A value of OOP_NO_CONTEXT means no context.
 *
 *   symbolList The OOP of a GemStone symbol list (that is, an Array of
 *              instances of SymbolDictionary).  The compiler uses the
 *              symbolList to resolve symbolic references in the code in source.
 *              A value of OOP_NIL means to use the default symbol list for the
 *              current GemStone session (that is, System myUserProfile
 *              symbolList).
 *
 *  Execution is in environment 0 using GCI_PERFORM_FLAG_ENABLE_DEBUG .
 *==============================================================================
 */
  EXTERN_GCI_DEC(int64)
GciExecuteStrFetchBytes( const char* source, int64 sourceSize,
                OopType sourceClass, OopType contextObject,
               OopType symbolList, ByteType *result, int64 maxResultSize);
"

	^ self ffiCall: #( long GciExecuteStrFetchBytes(String source, ulonglong sourceSize, GsGciOopType sourceClassOopType, GsGciOopType contextObjectOopType, GsGciOopType symbolListOopType, void *result, ulonglong maxResultSize ) )
	