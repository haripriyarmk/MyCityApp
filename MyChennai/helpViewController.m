//
//  helpViewController.m
//  MyChennai
//
//  Created by iphone developers on 04/04/16.
//  Copyright (c) 2016 iphone developers. All rights reserved.
//

#import "helpViewController.h"
#import "HelpCell.h"

@implementation helpViewController
@synthesize string1,string2,helpTable;


- (void)viewDidLoad
{
    numberArray =  [[NSMutableArray alloc] init];
    nameArray =  [[NSMutableArray alloc] init];

    
  numberaarrayone =  @[@"Police",@"Fire Service",@"Ambulance"];
    namearrayone = @[@"100",@"101",@"108"];
    [numberArray addObjectsFromArray: numberaarrayone]; //adding multiple objects
    [nameArray addObjectsFromArray: namearrayone];
    NSLog(@"%@",numberArray);
    [helpTable reloadData];
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
    static NSString *simpleTableIdentifier =@"helplineCell";
    HelpCell *cell = [helpTable dequeueReusableCellWithIdentifier:simpleTableIdentifier];
    if (cell == nil) {
        cell = [[HelpCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:simpleTableIdentifier];
    }
   // cell.textLabel.titleline=[[numberArray objectAtIndex:indexPath.row] valueForKey:@"string1"];
   cell.titleline.text = [nameArray objectAtIndex:indexPath.row];
    cell.descline.text = [numberArray objectAtIndex:indexPath.row];
    string1 = cell.titleline.text;
    string2 = cell.descline.text;
    
    return cell;

}
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSLog(@"%@",string1);
    NSString *callnumber = [NSString stringWithFormat:@"tel:%@",string1];
    NSLog(@"%@",callnumber);
    [[UIApplication sharedApplication] openURL:[NSURL URLWithString:callnumber]];
    
}

    


@end
