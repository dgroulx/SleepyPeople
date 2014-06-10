//
//  SBSMemberDatastore.m
//  SleepyPeople
//
//  Created by David Groulx on 6/3/14.
//  Copyright (c) 2014 David Groulx. All rights reserved.
//

#import "SBSMemberDatastore.h"
#import "SBSMember.h"

@interface SBSMemberDatastore () {
  NSMutableArray *members;
  NSURLConnection *connection;
  NSMutableData *jsonData;
}
@end

@implementation SBSMemberDatastore

- (id)init {
  self = [super init];
  if (self) {
    NSMutableURLRequest *request = [NSMutableURLRequest requestWithURL:[NSURL URLWithString:@"https://api.parse.com/1/classes/member"]];
    [request setValue:@"nq5kBbLQqWjW7taX9UVLoiEkyCDJ8gONbw92Fx6d" forHTTPHeaderField:@"X-Parse-Application-Id"];
    [request setValue:@"hwz7WjcntmkHEphq0JazkvX1WoN4jcLi3IKo5UbY" forHTTPHeaderField:@"X-Parse-REST-API-Key"];

    NSData *theData = [NSURLConnection sendSynchronousRequest:request returningResponse:nil error:nil];
    NSDictionary *allMembers = (NSDictionary *)[NSJSONSerialization JSONObjectWithData:theData options:0 error:nil];
    
    members = [NSMutableArray array];
    for (NSDictionary *memberDictionary in allMembers[@"results"]) {
      // Get the actual image, reuse the request since it has http headers set already
      request.URL = [NSURL URLWithString:memberDictionary[@"pic"][@"url"]];
      NSLog(@"Downlading %@", memberDictionary[@"pic"][@"url"]);
      NSData *imageData = [NSURLConnection sendSynchronousRequest:request returningResponse:nil error:nil];
      UIImage *memberImage = [UIImage imageWithData:imageData];
      
      NSMutableDictionary *memberDictionaryWithPic = [memberDictionary mutableCopy];
      memberDictionaryWithPic[@"pic"] = memberImage;
      [members addObject:[[SBSMember alloc] initWithDictionary:memberDictionaryWithPic]];
    }
  }
  
  return self;
}

- (id)initWithTestData {
  self = [super init];
  if (self) {
    NSDictionary *trentonDictionary = @{@"ama": @"",
                                        @"bio": @"",
                                        @"email": @"",
                                        @"fb": @"",
                                        @"NAME": @"Trenton Broughton",
                                        @"twitter": @"",
                                        @"pic": [UIImage imageNamed:@"Black-Mage"]};
    NSDictionary *garrickDictionary = @{@"ama": @"",
                                        @"bio": @"",
                                        @"email": @"",
                                        @"fb": @"",
                                        @"NAME": @"Garrick Pohl",
                                        @"twitter": @"",
                                        @"pic": [UIImage imageNamed:@"red-mage"]};
    NSDictionary *ronDictionary = @{@"ama": @"",
                                    @"bio": @"",
                                    @"email": @"",
                                    @"fb": @"",
                                    @"NAME": @"Ron VanSurksum",
                                    @"twitter": @"",
                                    @"pic": [UIImage imageNamed:@"white-mage"]};
    members = [@[[[SBSMember alloc] initWithDictionary:trentonDictionary],
               [[SBSMember alloc] initWithDictionary:garrickDictionary],
               [[SBSMember alloc] initWithDictionary:ronDictionary]] mutableCopy];
  }
  return self;
}

- (NSUInteger)count {
  return [members count];
}

- (SBSMember *)recordAtIndex:(NSUInteger)index {
  return members[index];
}

@end
