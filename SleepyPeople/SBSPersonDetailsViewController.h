//
//  SBSPersonDetailsViewController.h
//  SleepyPeople
//
//  Created by David Groulx on 6/3/14.
//  Copyright (c) 2014 David Groulx. All rights reserved.
//

#import <UIKit/UIKit.h>

@class SBSMember;

@interface SBSPersonDetailsViewController : UIViewController

@property (nonatomic) SBSMember *person;
@property IBOutlet UILabel *nameLabel;
@property IBOutlet UIImageView *portrait;

@end
