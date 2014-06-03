//
//  SBSMemberDatastore.h
//  SleepyPeople
//
//  Created by David Groulx on 6/3/14.
//  Copyright (c) 2014 David Groulx. All rights reserved.
//

#import <Foundation/Foundation.h>

@class SBSMember;

@interface SBSMemberDatastore : NSObject

- (id)initWithTestData;
- (NSUInteger)count;
- (SBSMember *)recordAtIndex:(NSUInteger)index;

@end
