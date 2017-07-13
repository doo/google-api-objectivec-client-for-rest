// NOTE: This file was generated by the ServiceGenerator.

// ----------------------------------------------------------------------------
// API:
//   Ad Exchange Buyer API II (adexchangebuyer2/v2beta1)
// Description:
//   Accesses the latest features for managing Ad Exchange accounts, Real-Time
//   Bidding configurations and auction metrics, and Marketplace programmatic
//   deals.
// Documentation:
//   https://developers.google.com/ad-exchange/buyer-rest/guides/client-access/

#import "GTLRAdExchangeBuyerIIQuery.h"

#import "GTLRAdExchangeBuyerIIObjects.h"

// ----------------------------------------------------------------------------
// Constants

// duplicateIdMode
NSString * const kGTLRAdExchangeBuyerIIDuplicateIdModeForceEnableDuplicateIds = @"FORCE_ENABLE_DUPLICATE_IDS";
NSString * const kGTLRAdExchangeBuyerIIDuplicateIdModeNoDuplicates = @"NO_DUPLICATES";

// ----------------------------------------------------------------------------
// Query Classes
//

@implementation GTLRAdExchangeBuyerIIQuery

@dynamic fields;

@end

@implementation GTLRAdExchangeBuyerIIQuery_AccountsClientsCreate

@dynamic accountId;

+ (instancetype)queryWithObject:(GTLRAdExchangeBuyerII_Client *)object
                      accountId:(long long)accountId {
  if (object == nil) {
    GTLR_DEBUG_ASSERT(object != nil, @"Got a nil object");
    return nil;
  }
  NSArray *pathParams = @[ @"accountId" ];
  NSString *pathURITemplate = @"v2beta1/accounts/{accountId}/clients";
  GTLRAdExchangeBuyerIIQuery_AccountsClientsCreate *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:@"POST"
                       pathParameterNames:pathParams];
  query.bodyObject = object;
  query.accountId = accountId;
  query.expectedObjectClass = [GTLRAdExchangeBuyerII_Client class];
  query.loggingName = @"adexchangebuyer2.accounts.clients.create";
  return query;
}

@end

@implementation GTLRAdExchangeBuyerIIQuery_AccountsClientsGet

@dynamic accountId, clientAccountId;

+ (instancetype)queryWithAccountId:(long long)accountId
                   clientAccountId:(long long)clientAccountId {
  NSArray *pathParams = @[
    @"accountId", @"clientAccountId"
  ];
  NSString *pathURITemplate = @"v2beta1/accounts/{accountId}/clients/{clientAccountId}";
  GTLRAdExchangeBuyerIIQuery_AccountsClientsGet *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:nil
                       pathParameterNames:pathParams];
  query.accountId = accountId;
  query.clientAccountId = clientAccountId;
  query.expectedObjectClass = [GTLRAdExchangeBuyerII_Client class];
  query.loggingName = @"adexchangebuyer2.accounts.clients.get";
  return query;
}

@end

@implementation GTLRAdExchangeBuyerIIQuery_AccountsClientsInvitationsCreate

@dynamic accountId, clientAccountId;

+ (instancetype)queryWithObject:(GTLRAdExchangeBuyerII_ClientUserInvitation *)object
                      accountId:(long long)accountId
                clientAccountId:(long long)clientAccountId {
  if (object == nil) {
    GTLR_DEBUG_ASSERT(object != nil, @"Got a nil object");
    return nil;
  }
  NSArray *pathParams = @[
    @"accountId", @"clientAccountId"
  ];
  NSString *pathURITemplate = @"v2beta1/accounts/{accountId}/clients/{clientAccountId}/invitations";
  GTLRAdExchangeBuyerIIQuery_AccountsClientsInvitationsCreate *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:@"POST"
                       pathParameterNames:pathParams];
  query.bodyObject = object;
  query.accountId = accountId;
  query.clientAccountId = clientAccountId;
  query.expectedObjectClass = [GTLRAdExchangeBuyerII_ClientUserInvitation class];
  query.loggingName = @"adexchangebuyer2.accounts.clients.invitations.create";
  return query;
}

@end

@implementation GTLRAdExchangeBuyerIIQuery_AccountsClientsInvitationsGet

@dynamic accountId, clientAccountId, invitationId;

+ (instancetype)queryWithAccountId:(long long)accountId
                   clientAccountId:(long long)clientAccountId
                      invitationId:(long long)invitationId {
  NSArray *pathParams = @[
    @"accountId", @"clientAccountId", @"invitationId"
  ];
  NSString *pathURITemplate = @"v2beta1/accounts/{accountId}/clients/{clientAccountId}/invitations/{invitationId}";
  GTLRAdExchangeBuyerIIQuery_AccountsClientsInvitationsGet *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:nil
                       pathParameterNames:pathParams];
  query.accountId = accountId;
  query.clientAccountId = clientAccountId;
  query.invitationId = invitationId;
  query.expectedObjectClass = [GTLRAdExchangeBuyerII_ClientUserInvitation class];
  query.loggingName = @"adexchangebuyer2.accounts.clients.invitations.get";
  return query;
}

@end

@implementation GTLRAdExchangeBuyerIIQuery_AccountsClientsInvitationsList

@dynamic accountId, clientAccountId, pageSize, pageToken;

+ (instancetype)queryWithAccountId:(long long)accountId
                   clientAccountId:(NSString *)clientAccountId {
  NSArray *pathParams = @[
    @"accountId", @"clientAccountId"
  ];
  NSString *pathURITemplate = @"v2beta1/accounts/{accountId}/clients/{clientAccountId}/invitations";
  GTLRAdExchangeBuyerIIQuery_AccountsClientsInvitationsList *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:nil
                       pathParameterNames:pathParams];
  query.accountId = accountId;
  query.clientAccountId = clientAccountId;
  query.expectedObjectClass = [GTLRAdExchangeBuyerII_ListClientUserInvitationsResponse class];
  query.loggingName = @"adexchangebuyer2.accounts.clients.invitations.list";
  return query;
}

@end

@implementation GTLRAdExchangeBuyerIIQuery_AccountsClientsList

@dynamic accountId, pageSize, pageToken;

+ (instancetype)queryWithAccountId:(long long)accountId {
  NSArray *pathParams = @[ @"accountId" ];
  NSString *pathURITemplate = @"v2beta1/accounts/{accountId}/clients";
  GTLRAdExchangeBuyerIIQuery_AccountsClientsList *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:nil
                       pathParameterNames:pathParams];
  query.accountId = accountId;
  query.expectedObjectClass = [GTLRAdExchangeBuyerII_ListClientsResponse class];
  query.loggingName = @"adexchangebuyer2.accounts.clients.list";
  return query;
}

@end

@implementation GTLRAdExchangeBuyerIIQuery_AccountsClientsUpdate

@dynamic accountId, clientAccountId;

+ (instancetype)queryWithObject:(GTLRAdExchangeBuyerII_Client *)object
                      accountId:(long long)accountId
                clientAccountId:(long long)clientAccountId {
  if (object == nil) {
    GTLR_DEBUG_ASSERT(object != nil, @"Got a nil object");
    return nil;
  }
  NSArray *pathParams = @[
    @"accountId", @"clientAccountId"
  ];
  NSString *pathURITemplate = @"v2beta1/accounts/{accountId}/clients/{clientAccountId}";
  GTLRAdExchangeBuyerIIQuery_AccountsClientsUpdate *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:@"PUT"
                       pathParameterNames:pathParams];
  query.bodyObject = object;
  query.accountId = accountId;
  query.clientAccountId = clientAccountId;
  query.expectedObjectClass = [GTLRAdExchangeBuyerII_Client class];
  query.loggingName = @"adexchangebuyer2.accounts.clients.update";
  return query;
}

@end

@implementation GTLRAdExchangeBuyerIIQuery_AccountsClientsUsersGet

@dynamic accountId, clientAccountId, userId;

+ (instancetype)queryWithAccountId:(long long)accountId
                   clientAccountId:(long long)clientAccountId
                            userId:(long long)userId {
  NSArray *pathParams = @[
    @"accountId", @"clientAccountId", @"userId"
  ];
  NSString *pathURITemplate = @"v2beta1/accounts/{accountId}/clients/{clientAccountId}/users/{userId}";
  GTLRAdExchangeBuyerIIQuery_AccountsClientsUsersGet *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:nil
                       pathParameterNames:pathParams];
  query.accountId = accountId;
  query.clientAccountId = clientAccountId;
  query.userId = userId;
  query.expectedObjectClass = [GTLRAdExchangeBuyerII_ClientUser class];
  query.loggingName = @"adexchangebuyer2.accounts.clients.users.get";
  return query;
}

@end

@implementation GTLRAdExchangeBuyerIIQuery_AccountsClientsUsersList

@dynamic accountId, clientAccountId, pageSize, pageToken;

+ (instancetype)queryWithAccountId:(long long)accountId
                   clientAccountId:(NSString *)clientAccountId {
  NSArray *pathParams = @[
    @"accountId", @"clientAccountId"
  ];
  NSString *pathURITemplate = @"v2beta1/accounts/{accountId}/clients/{clientAccountId}/users";
  GTLRAdExchangeBuyerIIQuery_AccountsClientsUsersList *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:nil
                       pathParameterNames:pathParams];
  query.accountId = accountId;
  query.clientAccountId = clientAccountId;
  query.expectedObjectClass = [GTLRAdExchangeBuyerII_ListClientUsersResponse class];
  query.loggingName = @"adexchangebuyer2.accounts.clients.users.list";
  return query;
}

@end

@implementation GTLRAdExchangeBuyerIIQuery_AccountsClientsUsersUpdate

@dynamic accountId, clientAccountId, userId;

+ (instancetype)queryWithObject:(GTLRAdExchangeBuyerII_ClientUser *)object
                      accountId:(long long)accountId
                clientAccountId:(long long)clientAccountId
                         userId:(long long)userId {
  if (object == nil) {
    GTLR_DEBUG_ASSERT(object != nil, @"Got a nil object");
    return nil;
  }
  NSArray *pathParams = @[
    @"accountId", @"clientAccountId", @"userId"
  ];
  NSString *pathURITemplate = @"v2beta1/accounts/{accountId}/clients/{clientAccountId}/users/{userId}";
  GTLRAdExchangeBuyerIIQuery_AccountsClientsUsersUpdate *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:@"PUT"
                       pathParameterNames:pathParams];
  query.bodyObject = object;
  query.accountId = accountId;
  query.clientAccountId = clientAccountId;
  query.userId = userId;
  query.expectedObjectClass = [GTLRAdExchangeBuyerII_ClientUser class];
  query.loggingName = @"adexchangebuyer2.accounts.clients.users.update";
  return query;
}

@end

@implementation GTLRAdExchangeBuyerIIQuery_AccountsCreativesCreate

@dynamic accountId, duplicateIdMode;

+ (instancetype)queryWithObject:(GTLRAdExchangeBuyerII_Creative *)object
                      accountId:(NSString *)accountId {
  if (object == nil) {
    GTLR_DEBUG_ASSERT(object != nil, @"Got a nil object");
    return nil;
  }
  NSArray *pathParams = @[ @"accountId" ];
  NSString *pathURITemplate = @"v2beta1/accounts/{accountId}/creatives";
  GTLRAdExchangeBuyerIIQuery_AccountsCreativesCreate *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:@"POST"
                       pathParameterNames:pathParams];
  query.bodyObject = object;
  query.accountId = accountId;
  query.expectedObjectClass = [GTLRAdExchangeBuyerII_Creative class];
  query.loggingName = @"adexchangebuyer2.accounts.creatives.create";
  return query;
}

@end

@implementation GTLRAdExchangeBuyerIIQuery_AccountsCreativesDealAssociationsAdd

@dynamic accountId, creativeId;

+ (instancetype)queryWithObject:(GTLRAdExchangeBuyerII_AddDealAssociationRequest *)object
                      accountId:(NSString *)accountId
                     creativeId:(NSString *)creativeId {
  if (object == nil) {
    GTLR_DEBUG_ASSERT(object != nil, @"Got a nil object");
    return nil;
  }
  NSArray *pathParams = @[
    @"accountId", @"creativeId"
  ];
  NSString *pathURITemplate = @"v2beta1/accounts/{accountId}/creatives/{creativeId}/dealAssociations:add";
  GTLRAdExchangeBuyerIIQuery_AccountsCreativesDealAssociationsAdd *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:@"POST"
                       pathParameterNames:pathParams];
  query.bodyObject = object;
  query.accountId = accountId;
  query.creativeId = creativeId;
  query.expectedObjectClass = [GTLRAdExchangeBuyerII_Empty class];
  query.loggingName = @"adexchangebuyer2.accounts.creatives.dealAssociations.add";
  return query;
}

@end

@implementation GTLRAdExchangeBuyerIIQuery_AccountsCreativesDealAssociationsList

@dynamic accountId, creativeId, pageSize, pageToken, query;

+ (instancetype)queryWithAccountId:(NSString *)accountId
                        creativeId:(NSString *)creativeId {
  NSArray *pathParams = @[
    @"accountId", @"creativeId"
  ];
  NSString *pathURITemplate = @"v2beta1/accounts/{accountId}/creatives/{creativeId}/dealAssociations";
  GTLRAdExchangeBuyerIIQuery_AccountsCreativesDealAssociationsList *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:nil
                       pathParameterNames:pathParams];
  query.accountId = accountId;
  query.creativeId = creativeId;
  query.expectedObjectClass = [GTLRAdExchangeBuyerII_ListDealAssociationsResponse class];
  query.loggingName = @"adexchangebuyer2.accounts.creatives.dealAssociations.list";
  return query;
}

@end

@implementation GTLRAdExchangeBuyerIIQuery_AccountsCreativesDealAssociationsRemove

@dynamic accountId, creativeId;

+ (instancetype)queryWithObject:(GTLRAdExchangeBuyerII_RemoveDealAssociationRequest *)object
                      accountId:(NSString *)accountId
                     creativeId:(NSString *)creativeId {
  if (object == nil) {
    GTLR_DEBUG_ASSERT(object != nil, @"Got a nil object");
    return nil;
  }
  NSArray *pathParams = @[
    @"accountId", @"creativeId"
  ];
  NSString *pathURITemplate = @"v2beta1/accounts/{accountId}/creatives/{creativeId}/dealAssociations:remove";
  GTLRAdExchangeBuyerIIQuery_AccountsCreativesDealAssociationsRemove *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:@"POST"
                       pathParameterNames:pathParams];
  query.bodyObject = object;
  query.accountId = accountId;
  query.creativeId = creativeId;
  query.expectedObjectClass = [GTLRAdExchangeBuyerII_Empty class];
  query.loggingName = @"adexchangebuyer2.accounts.creatives.dealAssociations.remove";
  return query;
}

@end

@implementation GTLRAdExchangeBuyerIIQuery_AccountsCreativesGet

@dynamic accountId, creativeId;

+ (instancetype)queryWithAccountId:(NSString *)accountId
                        creativeId:(NSString *)creativeId {
  NSArray *pathParams = @[
    @"accountId", @"creativeId"
  ];
  NSString *pathURITemplate = @"v2beta1/accounts/{accountId}/creatives/{creativeId}";
  GTLRAdExchangeBuyerIIQuery_AccountsCreativesGet *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:nil
                       pathParameterNames:pathParams];
  query.accountId = accountId;
  query.creativeId = creativeId;
  query.expectedObjectClass = [GTLRAdExchangeBuyerII_Creative class];
  query.loggingName = @"adexchangebuyer2.accounts.creatives.get";
  return query;
}

@end

@implementation GTLRAdExchangeBuyerIIQuery_AccountsCreativesList

@dynamic accountId, pageSize, pageToken, query;

+ (instancetype)queryWithAccountId:(NSString *)accountId {
  NSArray *pathParams = @[ @"accountId" ];
  NSString *pathURITemplate = @"v2beta1/accounts/{accountId}/creatives";
  GTLRAdExchangeBuyerIIQuery_AccountsCreativesList *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:nil
                       pathParameterNames:pathParams];
  query.accountId = accountId;
  query.expectedObjectClass = [GTLRAdExchangeBuyerII_ListCreativesResponse class];
  query.loggingName = @"adexchangebuyer2.accounts.creatives.list";
  return query;
}

@end

@implementation GTLRAdExchangeBuyerIIQuery_AccountsCreativesStopWatching

@dynamic accountId, creativeId;

+ (instancetype)queryWithObject:(GTLRAdExchangeBuyerII_StopWatchingCreativeRequest *)object
                      accountId:(NSString *)accountId
                     creativeId:(NSString *)creativeId {
  if (object == nil) {
    GTLR_DEBUG_ASSERT(object != nil, @"Got a nil object");
    return nil;
  }
  NSArray *pathParams = @[
    @"accountId", @"creativeId"
  ];
  NSString *pathURITemplate = @"v2beta1/accounts/{accountId}/creatives/{creativeId}:stopWatching";
  GTLRAdExchangeBuyerIIQuery_AccountsCreativesStopWatching *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:@"POST"
                       pathParameterNames:pathParams];
  query.bodyObject = object;
  query.accountId = accountId;
  query.creativeId = creativeId;
  query.expectedObjectClass = [GTLRAdExchangeBuyerII_Empty class];
  query.loggingName = @"adexchangebuyer2.accounts.creatives.stopWatching";
  return query;
}

@end

@implementation GTLRAdExchangeBuyerIIQuery_AccountsCreativesUpdate

@dynamic accountId, creativeId;

+ (instancetype)queryWithObject:(GTLRAdExchangeBuyerII_Creative *)object
                      accountId:(NSString *)accountId
                     creativeId:(NSString *)creativeId {
  if (object == nil) {
    GTLR_DEBUG_ASSERT(object != nil, @"Got a nil object");
    return nil;
  }
  NSArray *pathParams = @[
    @"accountId", @"creativeId"
  ];
  NSString *pathURITemplate = @"v2beta1/accounts/{accountId}/creatives/{creativeId}";
  GTLRAdExchangeBuyerIIQuery_AccountsCreativesUpdate *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:@"PUT"
                       pathParameterNames:pathParams];
  query.bodyObject = object;
  query.accountId = accountId;
  query.creativeId = creativeId;
  query.expectedObjectClass = [GTLRAdExchangeBuyerII_Creative class];
  query.loggingName = @"adexchangebuyer2.accounts.creatives.update";
  return query;
}

@end

@implementation GTLRAdExchangeBuyerIIQuery_AccountsCreativesWatch

@dynamic accountId, creativeId;

+ (instancetype)queryWithObject:(GTLRAdExchangeBuyerII_WatchCreativeRequest *)object
                      accountId:(NSString *)accountId
                     creativeId:(NSString *)creativeId {
  if (object == nil) {
    GTLR_DEBUG_ASSERT(object != nil, @"Got a nil object");
    return nil;
  }
  NSArray *pathParams = @[
    @"accountId", @"creativeId"
  ];
  NSString *pathURITemplate = @"v2beta1/accounts/{accountId}/creatives/{creativeId}:watch";
  GTLRAdExchangeBuyerIIQuery_AccountsCreativesWatch *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:@"POST"
                       pathParameterNames:pathParams];
  query.bodyObject = object;
  query.accountId = accountId;
  query.creativeId = creativeId;
  query.expectedObjectClass = [GTLRAdExchangeBuyerII_Empty class];
  query.loggingName = @"adexchangebuyer2.accounts.creatives.watch";
  return query;
}

@end

@implementation GTLRAdExchangeBuyerIIQuery_AccountsFilterSetsBidMetricsList

@dynamic accountId, filterSetId, pageSize, pageToken;

+ (instancetype)queryWithAccountId:(long long)accountId
                       filterSetId:(long long)filterSetId {
  NSArray *pathParams = @[
    @"accountId", @"filterSetId"
  ];
  NSString *pathURITemplate = @"v2beta1/accounts/{accountId}/filterSets/{filterSetId}/bidMetrics";
  GTLRAdExchangeBuyerIIQuery_AccountsFilterSetsBidMetricsList *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:nil
                       pathParameterNames:pathParams];
  query.accountId = accountId;
  query.filterSetId = filterSetId;
  query.expectedObjectClass = [GTLRAdExchangeBuyerII_ListBidMetricsResponse class];
  query.loggingName = @"adexchangebuyer2.accounts.filterSets.bidMetrics.list";
  return query;
}

@end

@implementation GTLRAdExchangeBuyerIIQuery_AccountsFilterSetsBidResponseErrorsList

@dynamic accountId, filterSetId, pageSize, pageToken;

+ (instancetype)queryWithAccountId:(long long)accountId
                       filterSetId:(long long)filterSetId {
  NSArray *pathParams = @[
    @"accountId", @"filterSetId"
  ];
  NSString *pathURITemplate = @"v2beta1/accounts/{accountId}/filterSets/{filterSetId}/bidResponseErrors";
  GTLRAdExchangeBuyerIIQuery_AccountsFilterSetsBidResponseErrorsList *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:nil
                       pathParameterNames:pathParams];
  query.accountId = accountId;
  query.filterSetId = filterSetId;
  query.expectedObjectClass = [GTLRAdExchangeBuyerII_ListBidResponseErrorsResponse class];
  query.loggingName = @"adexchangebuyer2.accounts.filterSets.bidResponseErrors.list";
  return query;
}

@end

@implementation GTLRAdExchangeBuyerIIQuery_AccountsFilterSetsBidResponsesWithoutBidsList

@dynamic accountId, filterSetId, pageSize, pageToken;

+ (instancetype)queryWithAccountId:(long long)accountId
                       filterSetId:(long long)filterSetId {
  NSArray *pathParams = @[
    @"accountId", @"filterSetId"
  ];
  NSString *pathURITemplate = @"v2beta1/accounts/{accountId}/filterSets/{filterSetId}/bidResponsesWithoutBids";
  GTLRAdExchangeBuyerIIQuery_AccountsFilterSetsBidResponsesWithoutBidsList *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:nil
                       pathParameterNames:pathParams];
  query.accountId = accountId;
  query.filterSetId = filterSetId;
  query.expectedObjectClass = [GTLRAdExchangeBuyerII_ListBidResponsesWithoutBidsResponse class];
  query.loggingName = @"adexchangebuyer2.accounts.filterSets.bidResponsesWithoutBids.list";
  return query;
}

@end

@implementation GTLRAdExchangeBuyerIIQuery_AccountsFilterSetsCreate

@dynamic accountId, isTransient;

+ (instancetype)queryWithObject:(GTLRAdExchangeBuyerII_FilterSet *)object
                      accountId:(long long)accountId {
  if (object == nil) {
    GTLR_DEBUG_ASSERT(object != nil, @"Got a nil object");
    return nil;
  }
  NSArray *pathParams = @[ @"accountId" ];
  NSString *pathURITemplate = @"v2beta1/accounts/{accountId}/filterSets";
  GTLRAdExchangeBuyerIIQuery_AccountsFilterSetsCreate *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:@"POST"
                       pathParameterNames:pathParams];
  query.bodyObject = object;
  query.accountId = accountId;
  query.expectedObjectClass = [GTLRAdExchangeBuyerII_FilterSet class];
  query.loggingName = @"adexchangebuyer2.accounts.filterSets.create";
  return query;
}

@end

@implementation GTLRAdExchangeBuyerIIQuery_AccountsFilterSetsDelete

@dynamic accountId, filterSetId;

+ (instancetype)queryWithAccountId:(long long)accountId
                       filterSetId:(long long)filterSetId {
  NSArray *pathParams = @[
    @"accountId", @"filterSetId"
  ];
  NSString *pathURITemplate = @"v2beta1/accounts/{accountId}/filterSets/{filterSetId}";
  GTLRAdExchangeBuyerIIQuery_AccountsFilterSetsDelete *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:@"DELETE"
                       pathParameterNames:pathParams];
  query.accountId = accountId;
  query.filterSetId = filterSetId;
  query.expectedObjectClass = [GTLRAdExchangeBuyerII_Empty class];
  query.loggingName = @"adexchangebuyer2.accounts.filterSets.delete";
  return query;
}

@end

@implementation GTLRAdExchangeBuyerIIQuery_AccountsFilterSetsFilteredBidRequestsList

@dynamic accountId, filterSetId, pageSize, pageToken;

+ (instancetype)queryWithAccountId:(long long)accountId
                       filterSetId:(long long)filterSetId {
  NSArray *pathParams = @[
    @"accountId", @"filterSetId"
  ];
  NSString *pathURITemplate = @"v2beta1/accounts/{accountId}/filterSets/{filterSetId}/filteredBidRequests";
  GTLRAdExchangeBuyerIIQuery_AccountsFilterSetsFilteredBidRequestsList *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:nil
                       pathParameterNames:pathParams];
  query.accountId = accountId;
  query.filterSetId = filterSetId;
  query.expectedObjectClass = [GTLRAdExchangeBuyerII_ListFilteredBidRequestsResponse class];
  query.loggingName = @"adexchangebuyer2.accounts.filterSets.filteredBidRequests.list";
  return query;
}

@end

@implementation GTLRAdExchangeBuyerIIQuery_AccountsFilterSetsFilteredBidsCreativesDetailsList

@dynamic accountId, creativeId, creativeStatusId, filterSetId, pageSize,
         pageToken;

+ (instancetype)queryWithAccountId:(long long)accountId
                       filterSetId:(long long)filterSetId
                  creativeStatusId:(NSInteger)creativeStatusId
                        creativeId:(NSString *)creativeId {
  NSArray *pathParams = @[
    @"accountId", @"creativeId", @"creativeStatusId", @"filterSetId"
  ];
  NSString *pathURITemplate = @"v2beta1/accounts/{accountId}/filterSets/{filterSetId}/filteredBids/{creativeStatusId}/creatives/{creativeId}/details";
  GTLRAdExchangeBuyerIIQuery_AccountsFilterSetsFilteredBidsCreativesDetailsList *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:nil
                       pathParameterNames:pathParams];
  query.accountId = accountId;
  query.filterSetId = filterSetId;
  query.creativeStatusId = creativeStatusId;
  query.creativeId = creativeId;
  query.expectedObjectClass = [GTLRAdExchangeBuyerII_ListCreativeStatusAndCreativeBreakdownByDetailResponse class];
  query.loggingName = @"adexchangebuyer2.accounts.filterSets.filteredBids.creatives.details.list";
  return query;
}

@end

@implementation GTLRAdExchangeBuyerIIQuery_AccountsFilterSetsFilteredBidsCreativesList

@dynamic accountId, creativeStatusId, filterSetId, pageSize, pageToken;

+ (instancetype)queryWithAccountId:(long long)accountId
                       filterSetId:(long long)filterSetId
                  creativeStatusId:(NSInteger)creativeStatusId {
  NSArray *pathParams = @[
    @"accountId", @"creativeStatusId", @"filterSetId"
  ];
  NSString *pathURITemplate = @"v2beta1/accounts/{accountId}/filterSets/{filterSetId}/filteredBids/{creativeStatusId}/creatives";
  GTLRAdExchangeBuyerIIQuery_AccountsFilterSetsFilteredBidsCreativesList *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:nil
                       pathParameterNames:pathParams];
  query.accountId = accountId;
  query.filterSetId = filterSetId;
  query.creativeStatusId = creativeStatusId;
  query.expectedObjectClass = [GTLRAdExchangeBuyerII_ListCreativeStatusBreakdownByCreativeResponse class];
  query.loggingName = @"adexchangebuyer2.accounts.filterSets.filteredBids.creatives.list";
  return query;
}

@end

@implementation GTLRAdExchangeBuyerIIQuery_AccountsFilterSetsFilteredBidsDetailsList

@dynamic accountId, creativeStatusId, filterSetId, pageSize, pageToken;

+ (instancetype)queryWithAccountId:(long long)accountId
                       filterSetId:(long long)filterSetId
                  creativeStatusId:(NSInteger)creativeStatusId {
  NSArray *pathParams = @[
    @"accountId", @"creativeStatusId", @"filterSetId"
  ];
  NSString *pathURITemplate = @"v2beta1/accounts/{accountId}/filterSets/{filterSetId}/filteredBids/{creativeStatusId}/details";
  GTLRAdExchangeBuyerIIQuery_AccountsFilterSetsFilteredBidsDetailsList *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:nil
                       pathParameterNames:pathParams];
  query.accountId = accountId;
  query.filterSetId = filterSetId;
  query.creativeStatusId = creativeStatusId;
  query.expectedObjectClass = [GTLRAdExchangeBuyerII_ListCreativeStatusBreakdownByDetailResponse class];
  query.loggingName = @"adexchangebuyer2.accounts.filterSets.filteredBids.details.list";
  return query;
}

@end

@implementation GTLRAdExchangeBuyerIIQuery_AccountsFilterSetsFilteredBidsList

@dynamic accountId, filterSetId, pageSize, pageToken;

+ (instancetype)queryWithAccountId:(long long)accountId
                       filterSetId:(long long)filterSetId {
  NSArray *pathParams = @[
    @"accountId", @"filterSetId"
  ];
  NSString *pathURITemplate = @"v2beta1/accounts/{accountId}/filterSets/{filterSetId}/filteredBids";
  GTLRAdExchangeBuyerIIQuery_AccountsFilterSetsFilteredBidsList *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:nil
                       pathParameterNames:pathParams];
  query.accountId = accountId;
  query.filterSetId = filterSetId;
  query.expectedObjectClass = [GTLRAdExchangeBuyerII_ListFilteredBidsResponse class];
  query.loggingName = @"adexchangebuyer2.accounts.filterSets.filteredBids.list";
  return query;
}

@end

@implementation GTLRAdExchangeBuyerIIQuery_AccountsFilterSetsGet

@dynamic accountId, filterSetId;

+ (instancetype)queryWithAccountId:(long long)accountId
                       filterSetId:(long long)filterSetId {
  NSArray *pathParams = @[
    @"accountId", @"filterSetId"
  ];
  NSString *pathURITemplate = @"v2beta1/accounts/{accountId}/filterSets/{filterSetId}";
  GTLRAdExchangeBuyerIIQuery_AccountsFilterSetsGet *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:nil
                       pathParameterNames:pathParams];
  query.accountId = accountId;
  query.filterSetId = filterSetId;
  query.expectedObjectClass = [GTLRAdExchangeBuyerII_FilterSet class];
  query.loggingName = @"adexchangebuyer2.accounts.filterSets.get";
  return query;
}

@end

@implementation GTLRAdExchangeBuyerIIQuery_AccountsFilterSetsImpressionMetricsList

@dynamic accountId, filterSetId, pageSize, pageToken;

+ (instancetype)queryWithAccountId:(long long)accountId
                       filterSetId:(long long)filterSetId {
  NSArray *pathParams = @[
    @"accountId", @"filterSetId"
  ];
  NSString *pathURITemplate = @"v2beta1/accounts/{accountId}/filterSets/{filterSetId}/impressionMetrics";
  GTLRAdExchangeBuyerIIQuery_AccountsFilterSetsImpressionMetricsList *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:nil
                       pathParameterNames:pathParams];
  query.accountId = accountId;
  query.filterSetId = filterSetId;
  query.expectedObjectClass = [GTLRAdExchangeBuyerII_ListImpressionMetricsResponse class];
  query.loggingName = @"adexchangebuyer2.accounts.filterSets.impressionMetrics.list";
  return query;
}

@end

@implementation GTLRAdExchangeBuyerIIQuery_AccountsFilterSetsList

@dynamic accountId, pageSize, pageToken;

+ (instancetype)queryWithAccountId:(long long)accountId {
  NSArray *pathParams = @[ @"accountId" ];
  NSString *pathURITemplate = @"v2beta1/accounts/{accountId}/filterSets";
  GTLRAdExchangeBuyerIIQuery_AccountsFilterSetsList *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:nil
                       pathParameterNames:pathParams];
  query.accountId = accountId;
  query.expectedObjectClass = [GTLRAdExchangeBuyerII_ListFilterSetsResponse class];
  query.loggingName = @"adexchangebuyer2.accounts.filterSets.list";
  return query;
}

@end

@implementation GTLRAdExchangeBuyerIIQuery_AccountsFilterSetsLosingBidsList

@dynamic accountId, filterSetId, pageSize, pageToken;

+ (instancetype)queryWithAccountId:(long long)accountId
                       filterSetId:(long long)filterSetId {
  NSArray *pathParams = @[
    @"accountId", @"filterSetId"
  ];
  NSString *pathURITemplate = @"v2beta1/accounts/{accountId}/filterSets/{filterSetId}/losingBids";
  GTLRAdExchangeBuyerIIQuery_AccountsFilterSetsLosingBidsList *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:nil
                       pathParameterNames:pathParams];
  query.accountId = accountId;
  query.filterSetId = filterSetId;
  query.expectedObjectClass = [GTLRAdExchangeBuyerII_ListLosingBidsResponse class];
  query.loggingName = @"adexchangebuyer2.accounts.filterSets.losingBids.list";
  return query;
}

@end

@implementation GTLRAdExchangeBuyerIIQuery_AccountsFilterSetsNonBillableWinningBidsList

@dynamic accountId, filterSetId, pageSize, pageToken;

+ (instancetype)queryWithAccountId:(long long)accountId
                       filterSetId:(long long)filterSetId {
  NSArray *pathParams = @[
    @"accountId", @"filterSetId"
  ];
  NSString *pathURITemplate = @"v2beta1/accounts/{accountId}/filterSets/{filterSetId}/nonBillableWinningBids";
  GTLRAdExchangeBuyerIIQuery_AccountsFilterSetsNonBillableWinningBidsList *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:nil
                       pathParameterNames:pathParams];
  query.accountId = accountId;
  query.filterSetId = filterSetId;
  query.expectedObjectClass = [GTLRAdExchangeBuyerII_ListNonBillableWinningBidsResponse class];
  query.loggingName = @"adexchangebuyer2.accounts.filterSets.nonBillableWinningBids.list";
  return query;
}

@end
