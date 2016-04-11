//
//  InfoViewController.m
//  MyChennai
//
//  Created by iphone developers on 06/04/16.
//  Copyright (c) 2016 iphone developers. All rights reserved.
//

#import "InfoViewController.h"
#import "InfoCell.h"
#import "InfoDetailViewController.h"
@implementation InfoViewController
@synthesize string1,string2,infoTable;
- (void)viewDidLoad
{
    //numberArray =  [[NSMutableArray alloc] init];
    nameArray =  [[NSMutableArray alloc] init];
    
    
    //numberaarrayone =  @[@"Police",@"Fire Service",@"Ambulance"];
    namearrayone = @[@"Aadhar Card",@"Ration Card",@"Voter ID", @"PAN Card", @"Pay EB Bill", @"Pay Water Tax"];
    //[numberArray addObjectsFromArray: numberaarrayone]; //adding multiple objects
    [nameArray addObjectsFromArray: namearrayone];
    NSLog(@"%@",nameArray);
    [infoTable reloadData];
    [super viewDidLoad];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return [nameArray count];
    
    
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    
    // Return the number of rows in the section.
    NSLog(@"%d",[nameArray count]);
    return [nameArray count];
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *simpleTableIdentifier =@"infoCell";
    InfoCell *cell = [infoTable dequeueReusableCellWithIdentifier:simpleTableIdentifier];
    if (cell == nil) {
        cell = [[InfoCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:simpleTableIdentifier];
    }
    // cell.textLabel.titleline=[[numberArray objectAtIndex:indexPath.row] valueForKey:@"string1"];
    cell.titleline.text = [nameArray objectAtIndex:indexPath.row];
    
    string1 = cell.titleline.text;
   
    
    return cell;
    
}
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
     NSLog(@"%@",string1);
    [self performSegueWithIdentifier: @"infoDetails" sender: self];
      // [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"http://www.stackoverflow.com"]];
   
    
}
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
   
        InfoDetailViewController *destViewController = segue.destinationViewController;
     NSIndexPath *indexPath = nil;
    indexPath = [self.infoTable indexPathForSelectedRow];

        destViewController.getInfoType = [nameArray objectAtIndex:indexPath.row];
         NSLog(@"%@",destViewController.getInfoType);
    
    
}


@end
