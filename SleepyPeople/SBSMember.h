//
//  SBSMember.h
//  SleepyPeople
//
//  Created by David Groulx on 6/3/14.
//  Copyright (c) 2014 David Groulx. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface SBSMember : NSObject

@property NSString *ama;
@property NSString *bio;
@property NSString *email;
@property NSString *fb;
@property NSString *name;
@property NSString *twitter;
@property UIImage *pic;

- (id)initWithDictionary:(NSDictionary *)properties;

@end
