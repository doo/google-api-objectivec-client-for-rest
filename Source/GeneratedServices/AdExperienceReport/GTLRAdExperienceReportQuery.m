// NOTE: This file was generated by the ServiceGenerator.

// ----------------------------------------------------------------------------
// API:
//   Google Ad Experience Report API (adexperiencereport/v1)
// Description:
//   View Ad Experience Report data, and get a list of sites that have a
//   significant number of annoying ads.
// Documentation:
//   https://developers.google.com/ad-experience-report/

#import "GTLRAdExperienceReportQuery.h"

#import "GTLRAdExperienceReportObjects.h"

@implementation GTLRAdExperienceReportQuery

@dynamic fields;

@end

@implementation GTLRAdExperienceReportQuery_SitesGet

@dynamic name;

+ (instancetype)queryWithName:(NSString *)name {
  NSArray *pathParams = @[ @"name" ];
  NSString *pathURITemplate = @"v1/{+name}";
  GTLRAdExperienceReportQuery_SitesGet *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:nil
                       pathParameterNames:pathParams];
  query.name = name;
  query.expectedObjectClass = [GTLRAdExperienceReport_SiteSummaryResponse class];
  query.loggingName = @"adexperiencereport.sites.get";
  return query;
}

@end

@implementation GTLRAdExperienceReportQuery_ViolatingSitesList

+ (instancetype)query {
  NSString *pathURITemplate = @"v1/violatingSites";
  GTLRAdExperienceReportQuery_ViolatingSitesList *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:nil
                       pathParameterNames:nil];
  query.expectedObjectClass = [GTLRAdExperienceReport_ViolatingSitesResponse class];
  query.loggingName = @"adexperiencereport.violatingSites.list";
  return query;
}

@end
