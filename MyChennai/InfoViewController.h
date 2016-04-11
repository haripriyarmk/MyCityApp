//
//  InfoViewController.h
//  MyChennai
//
//  Created by iphone developers on 06/04/16.
//  Copyright (c) 2016 iphone developers. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface InfoViewController : UIViewController <UITableViewDelegate, UITableViewDataSource> {
    NSString *string1;
    NSString *string2;
    //NSArray *numberaarrayone;
    NSArray *namearrayone;
    //NSMutableArray *numberArray;
    NSMutableArray *nameArray;
}
@property (nonatomic,retain) NSString *string1;
@property (nonatomic,retain) NSString *string2;
@property (weak, nonatomic) IBOutlet UITableView *infoTable;


@end
