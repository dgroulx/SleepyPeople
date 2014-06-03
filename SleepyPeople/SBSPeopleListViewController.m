//
//  SBSPeopleListViewController.m
//  SleepyPeople
//
//  Created by David Groulx on 6/3/14.
//  Copyright (c) 2014 David Groulx. All rights reserved.
//

#import "SBSPeopleListViewController.h"
#import "SBSPersonDetailsViewController.h"

@interface SBSPeopleListViewController () {
  NSArray *people;
}

@end

@implementation SBSPeopleListViewController

- (id)initWithCoder:(NSCoder *)aDecoder {
  self = [super initWithCoder:aDecoder];
  if (self) {
    NSDictionary *trenton = @{@"ama": @"",
                              @"bio": @"",
                              @"email": @"",
                              @"fb": @"",
                              @"name": @"Trenton Broughton",
                              @"twitter": @"",
                              @"pic": @""};
    NSDictionary *garrick = @{@"ama": @"",
                              @"bio": @"",
                              @"email": @"",
                              @"fb": @"",
                              @"name": @"Garrick Pohl",
                              @"twitter": @"",
                              @"pic": @""};
    NSDictionary *ron = @{@"ama": @"",
                          @"bio": @"",
                          @"email": @"",
                          @"fb": @"",
                          @"name": @"Ron VanSurksum",
                          @"twitter": @"",
                          @"pic": @""};
    people = @[trenton, garrick, ron];
  }
  return self;
}

- (void)viewDidLoad
{
  [super viewDidLoad];
  
  //  [self.tableView registerClass:[UITableViewCell class] forCellReuseIdentifier:@"memberCell"];
  // Uncomment the following line to preserve selection between presentations.
  // self.clearsSelectionOnViewWillAppear = NO;
  
  // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
  // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

- (void)didReceiveMemoryWarning
{
  [super didReceiveMemoryWarning];
  // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
  return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
  return [people count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
  UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"memberCell" forIndexPath:indexPath];
  cell.textLabel.text = people[indexPath.row][@"name"];
  return cell;
}

//- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
//  SBSPersonDetailsViewController* vc = [[SBSPersonDetailsViewController alloc] init];
//  [self.navigationController presentViewController:vc animated:YES completion:nil];
//}

/*
 // Override to support conditional editing of the table view.
 - (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath
 {
 // Return NO if you do not want the specified item to be editable.
 return YES;
 }
 */

/*
 // Override to support editing the table view.
 - (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
 {
 if (editingStyle == UITableViewCellEditingStyleDelete) {
 // Delete the row from the data source
 [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
 } else if (editingStyle == UITableViewCellEditingStyleInsert) {
 // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
 }
 }
 */

/*
 // Override to support rearranging the table view.
 - (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath
 {
 }
 */

/*
 // Override to support conditional rearranging of the table view.
 - (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath
 {
 // Return NO if you do not want the item to be re-orderable.
 return YES;
 }
 */


 #pragma mark - Navigation
 
// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
  NSLog(@"seguing");
// Get the new view controller using [segue destinationViewController].
// Pass the selected object to the new view controller.
}

@end
