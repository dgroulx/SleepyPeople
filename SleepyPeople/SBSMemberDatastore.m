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
  NSArray *members;
}
@end

@implementation SBSMemberDatastore

- (id)initWithTestData {
  self = [super init];
  if (self) {
    NSDictionary *trentonDictionary = @{@"ama": @"",
                                        @"bio": @"",
                                        @"email": @"",
                                        @"fb": @"",
                                        @"name": @"Trenton Broughton",
                                        @"twitter": @"",
                                        @"pic": @""};
    NSDictionary *garrickDictionary = @{@"ama": @"",
                                        @"bio": @"",
                                        @"email": @"",
                                        @"fb": @"",
                                        @"name": @"Garrick Pohl",
                                        @"twitter": @"",
                                        @"pic": @""};
    NSDictionary *ronDictionary = @{@"ama": @"",
                                    @"bio": @"",
                                    @"email": @"",
                                    @"fb": @"",
                                    @"name": @"Ron VanSurksum",
                                    @"twitter": @"",
                                    @"pic": @""};
    members = @[[[SBSMember alloc] initWithDictionary:trentonDictionary],
               [[SBSMember alloc] initWithDictionary:garrickDictionary],
               [[SBSMember alloc] initWithDictionary:ronDictionary]];
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
