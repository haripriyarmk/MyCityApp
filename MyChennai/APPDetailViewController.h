//
//  APPDetailViewController.h
//  MyChennai
//
//  Created by iphone developers on 06/04/16.
//  Copyright (c) 2016 iphone developers. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface APPDetailViewController : UIViewController

@property (copy, nonatomic) NSString *url;

@property (weak, nonatomic) IBOutlet UIWebView *webView;

@end

