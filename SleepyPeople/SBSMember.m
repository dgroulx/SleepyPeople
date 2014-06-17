//
//  SBSMember.m
//  SleepyPeople
//
//  Created by David Groulx on 6/3/14.
//  Copyright (c) 2014 David Groulx. All rights reserved.
//

#import "SBSMember.h"

@interface SBSMember () {
  UIImage *userImage;
}
@end

@implementation SBSMember

- (id)initWithDictionary:(NSDictionary *)properties {
  self = [super init];
  if (self) {
    _objectId = properties[@"objectId"];
    _ama = properties[@"AMA"];
    _bio = properties[@"BIO"];
    _email = properties[@"EMAIL"];
    _fb = properties[@"FB"];
    _name = properties[@"NAME"];
    _twitter = properties[@"TWITTER"];
    _picURL = [NSURL URLWithString:properties[@"picURL"]];
  }
  return self;
}

- (UIImage *)pic {
  if (userImage == nil) {
    // Get the actual image, reuse the request since it has http headers set already
    NSMutableURLRequest *request = [NSMutableURLRequest requestWithURL:[NSURL URLWithString:@"https://api.parse.com/1/classes/member"]];
    [request setValue:@"nq5kBbLQqWjW7taX9UVLoiEkyCDJ8gONbw92Fx6d" forHTTPHeaderField:@"X-Parse-Application-Id"];
    [request setValue:@"hwz7WjcntmkHEphq0JazkvX1WoN4jcLi3IKo5UbY" forHTTPHeaderField:@"X-Parse-REST-API-Key"];
    request.URL = self.picURL;
    NSLog(@"Downlading %@", request.URL);
    NSData *imageData = [NSURLConnection sendSynchronousRequest:request returningResponse:nil error:nil];
    userImage = [UIImage imageWithData:imageData];
  }
  return userImage;
}

@end
