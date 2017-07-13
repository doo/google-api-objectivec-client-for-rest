// NOTE: This file was generated by the ServiceGenerator.

// ----------------------------------------------------------------------------
// API:
//   Google Cloud Translation API (translate/v2)
// Description:
//   The Google Cloud Translation API lets websites and programs integrate with
//   Google Translate programmatically.
// Documentation:
//   https://code.google.com/apis/language/translate/v2/getting_started.html

#if GTLR_BUILT_AS_FRAMEWORK
  #import "GTLR/GTLRService.h"
#else
  #import "GTLRService.h"
#endif

#if GTLR_RUNTIME_VERSION != 3000
#error This file was generated by a different version of ServiceGenerator which is incompatible with this GTLR library source.
#endif

NS_ASSUME_NONNULL_BEGIN

// ----------------------------------------------------------------------------
// Authorization scopes

/**
 *  Authorization scope: View and manage your data across Google Cloud Platform
 *  services
 *
 *  Value "https://www.googleapis.com/auth/cloud-platform"
 */
GTLR_EXTERN NSString * const kGTLRAuthScopeTranslateCloudPlatform;
/**
 *  Authorization scope: Translate text from one language to another using
 *  Google Translate
 *
 *  Value "https://www.googleapis.com/auth/cloud-translation"
 */
GTLR_EXTERN NSString * const kGTLRAuthScopeTranslateCloudTranslation;

// ----------------------------------------------------------------------------
//   GTLRTranslateService
//

/**
 *  Service for executing Google Cloud Translation API queries.
 *
 *  The Google Cloud Translation API lets websites and programs integrate with
 *  Google Translate programmatically.
 */
@interface GTLRTranslateService : GTLRService

// No new methods

// Clients should create a standard query with any of the class methods in
// GTLRTranslateQuery.h. The query can the be sent with GTLRService's execute
// methods,
//
//   - (GTLRServiceTicket *)executeQuery:(GTLRQuery *)query
//                     completionHandler:(void (^)(GTLRServiceTicket *ticket,
//                                                 id object, NSError *error))handler;
// or
//   - (GTLRServiceTicket *)executeQuery:(GTLRQuery *)query
//                              delegate:(id)delegate
//                     didFinishSelector:(SEL)finishedSelector;
//
// where finishedSelector has a signature of:
//
//   - (void)serviceTicket:(GTLRServiceTicket *)ticket
//      finishedWithObject:(id)object
//                   error:(NSError *)error;
//
// The object passed to the completion handler or delegate method
// is a subclass of GTLRObject, determined by the query method executed.

@end

NS_ASSUME_NONNULL_END
