API - export set
apiGciReleaseOops: theOops a: numOops
"/* =============================================================================
 * GciReleaseOops function              (behavior has changed in Gemstone64)
 *
 *  If called from a user action
 *   removes specified objects from the user action's export set
 *  else
 *   removes specified objects from the session's PureExportSet
 *
 * Input Arguments:
 *   theOops    An array of OOPs.  Each element of the array corresponds to an
 *              object to be released.
 *   numOops    The number of elements in theOops.
 *
 *  Has no effect on oops which have previously been accumulated
 *  in the list to be returned by GciDirtySaveObjs.
 *==============================================================================
 */
  EXTERN_GCI_DEC(void)
GciReleaseOops(const OopType theOops[], int numOops);
"
	^ self ffiCall: #( void GciReleaseOops( ulong theOops, long numOops) )
	
