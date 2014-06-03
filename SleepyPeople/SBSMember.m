//
//  SBSMember.m
//  SleepyPeople
//
//  Created by David Groulx on 6/3/14.
//  Copyright (c) 2014 David Groulx. All rights reserved.
//

#import "SBSMember.h"

@implementation SBSMember

- (id)initWithDictionary:(NSDictionary *)properties {
  self = [super init];
  if (self) {
    _objectId = properties[@"ObjectId"];
    _ama = properties[@"ama"];
    _bio = properties[@"bio"];
    _email = properties[@"email"];
    _fb = properties[@"fb"];
    _name = properties[@"name"];
    _twitter = properties[@"twitter"];
    _pic = properties[@"pic"];
  }
  return self;
}

@end
