//
//  DashboardViewController.h
//  MyChennai
//
//  Created by iphone developers on 03/04/16.
//  Copyright (c) 2016 iphone developers. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DashboardViewController : UIViewController
@property (weak, nonatomic) IBOutlet UIButton *helpline;
@property (weak, nonatomic) IBOutlet UIButton *nearby;

- (IBAction)helpline:(id)sender;

- (IBAction)nearby:(id)sender;


@end
