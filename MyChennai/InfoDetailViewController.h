//
//  InfoDetailViewController.h
//  MyChennai
//
//  Created by iphone developers on 06/04/16.
//  Copyright (c) 2016 iphone developers. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface InfoDetailViewController : UIViewController {
    NSString *getInfoType;
}
@property (nonatomic,retain) NSString *getInfoType;

@property (weak, nonatomic) IBOutlet UIWebView *myWebView;

@end
