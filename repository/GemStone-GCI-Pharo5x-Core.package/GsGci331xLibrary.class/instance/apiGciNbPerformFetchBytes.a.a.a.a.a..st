API
apiGciNbPerformFetchBytes: receiver a: selectorString a: args a: numArgs a: result a: maxResultSize
"/* =============================================================================
 * GciNbPerformFetchBytes
 *
 * non blocking variant of GciPerformFetchBytes
 */
  EXTERN_GCI_DEC(void)
GciNbPerformFetchBytes(OopType receiver, const char *selector,
         const OopType *args, int numArgs ,
         ByteType *result, ssize_t maxResultSize);
"
	
	^ self ffiCall: #( void GciNbPerformFetchBytes(GsGciOopType receiver, String selectorString, ulong args, long numArgs, void *result, ulonglong maxResultSize) )