// NOTE: This file was generated by the ServiceGenerator.

// ----------------------------------------------------------------------------
// API:
//   Knowledge Graph Search API (kgsearch/v1)
// Description:
//   Searches the Google Knowledge Graph for entities.
// Documentation:
//   https://developers.google.com/knowledge-graph/

#if GTLR_BUILT_AS_FRAMEWORK
  #import "GTLR/GTLRQuery.h"
#else
  #import "GTLRQuery.h"
#endif

#if GTLR_RUNTIME_VERSION != 3000
#error This file was generated by a different version of ServiceGenerator which is incompatible with this GTLR library source.
#endif

NS_ASSUME_NONNULL_BEGIN

/**
 *  Parent class for other Kgsearch query classes.
 */
@interface GTLRKgsearchQuery : GTLRQuery

/** Selector specifying which fields to include in a partial response. */
@property(nonatomic, copy, nullable) NSString *fields;

@end

/**
 *  Searches Knowledge Graph for entities that match the constraints.
 *  A list of matched entities will be returned in response, which will be in
 *  JSON-LD format and compatible with http://schema.org
 *
 *  Method: kgsearch.entities.search
 */
@interface GTLRKgsearchQuery_EntitiesSearch : GTLRKgsearchQuery
// Previous library name was
//   +[GTLQueryKgsearch queryForEntitiesSearch]

/**
 *  The list of entity id to be used for search instead of query string.
 *  To specify multiple ids in the HTTP request, repeat the parameter in the
 *  URL as in ...?ids=A&ids=B
 */
@property(nonatomic, strong, nullable) NSArray<NSString *> *ids;

/** Enables indenting of json results. */
@property(nonatomic, assign) BOOL indent;

/**
 *  The list of language codes (defined in ISO 693) to run the query with,
 *  e.g. 'en'.
 */
@property(nonatomic, strong, nullable) NSArray<NSString *> *languages;

/** Limits the number of entities to be returned. */
@property(nonatomic, assign) NSInteger limit;

/** Enables prefix match against names and aliases of entities */
@property(nonatomic, assign) BOOL prefix;

/** The literal query string for search. */
@property(nonatomic, copy, nullable) NSString *query;

/**
 *  Restricts returned entities with these types, e.g. Person
 *  (as defined in http://schema.org/Person). If multiple types are specified,
 *  returned entities will contain one or more of these types.
 */
@property(nonatomic, strong, nullable) NSArray<NSString *> *types;

/**
 *  Fetches a @c GTLRKgsearch_SearchResponse.
 *
 *  Searches Knowledge Graph for entities that match the constraints.
 *  A list of matched entities will be returned in response, which will be in
 *  JSON-LD format and compatible with http://schema.org
 *
 *  @returns GTLRKgsearchQuery_EntitiesSearch
 */
+ (instancetype)query;

@end

NS_ASSUME_NONNULL_END
