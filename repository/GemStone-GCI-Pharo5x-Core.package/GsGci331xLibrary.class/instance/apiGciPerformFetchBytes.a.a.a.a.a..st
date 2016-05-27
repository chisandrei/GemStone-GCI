API
apiGciPerformFetchBytes: receiver a: selectorString a: args a: numArgs a: result a: maxResultSize
"/* =============================================================================
 * GciPerformFetchBytes
 *
 * same args as GciPerform, plus maxResultSize is the maximum number
 * of bytes to be returned in *result .
 *
 *  Return Value:
 *   Returns number of bytes returned in *result, 
 *   or -1 if an error is available to be fetched with GciErr .
 */
  EXTERN_GCI_DEC(ssize_t)
GciPerformFetchBytes(OopType receiver, const char *selector,
         const OopType *args, int numArgs ,
         ByteType *result, ssize_t maxResultSize);

"
	
	^ self ffiCall: #( void GciPerformFetchBytes(GsGciOopType receiver, String selectorString, ulong args, long numArgs, void *result, ulonglong maxResultSize) )