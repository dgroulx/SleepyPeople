//
//  SBSMember.h
//  SleepyPeople
//
//  Created by David Groulx on 6/3/14.
//  Copyright (c) 2014 David Groulx. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface SBSMember : NSObject

@property NSString *objectId;
@property NSString *ama;
@property NSString *bio;
@property NSString *email;
@property NSString *fb;
@property NSString *name;
@property NSString *twitter;
@property NSURL *picURL;
@property (readonly) UIImage *pic;

- (id)initWithDictionary:(NSDictionary *)properties;

@end
