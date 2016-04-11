//
//  helpViewController.h
//  MyChennai
//
//  Created by iphone developers on 04/04/16.
//  Copyright (c) 2016 iphone developers. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface helpViewController : UIViewController <UITableViewDelegate, UITableViewDataSource> {
    NSString *string1;
    NSString *string2;
    NSArray *numberaarrayone;
    NSArray *namearrayone;
    NSMutableArray *numberArray;
     NSMutableArray *nameArray;
}
@property (nonatomic,retain) NSString *string1;
@property (nonatomic,retain) NSString *string2;

@property (weak, nonatomic) IBOutlet UITableView *helpTable;

@end
