API - export set
apiGciReleaseAllOops
"/* =============================================================================
 * GciReleaseAllOops function      (behavior has changed in Gemstone64)
 *
 * If called from a user action
 *   resets the user action's export set to empty
 * else
 *   resets the session's PureExportSet to empty .
 *
 *==============================================================================
 */
  EXTERN_GCI_DEC(void)
GciReleaseAllOops(void);
"
	^ self ffiCall: #( void GciReleaseAllOops( void ) )
	
