API
apiGciNbExecuteStrFetchBytes: source a: sourceSize a: sourceClassOopType a: contextObjectOopType a: symbolListOopType a: result a: maxResultSize
"/* =============================================================================
 * GciNbExecuteStrFetchBytes
 *  non blocking implementation of GciExecuteStrFetchBytes
 *==============================================================================
 */
  EXTERN_GCI_DEC(void)
GciNbExecuteStrFetchBytes(const char* source, int64 sourceSize, OopType sourceClass, 
          OopType contextObject, OopType symbolList, 
          ByteType *result, int64 maxResultSize);

"

	^ self ffiCall: #( void GciNbExecuteStrFetchBytes(String source, ulonglong sourceSize, GsGciOopType sourceClassOopType, GsGciOopType contextObjectOopType, GsGciOopType symbolListOopType, void *result, ulonglong maxResultSize ) )
	