API - non-blocking
apiGciNbCommit
"/* =============================================================================
 * GciNbCommit function
 *   Write the current transaction to the database (nonblocking).
 *==============================================================================
 */
  EXTERN_GCI_DEC(void)
GciNbCommit(void);
"
	
	^ self ffiCall: #( void GciNbCommit() )