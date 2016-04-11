//
//  InfoDetailViewController.m
//  MyChennai
//
//  Created by iphone developers on 06/04/16.
//  Copyright (c) 2016 iphone developers. All rights reserved.
//

#import "InfoDetailViewController.h"

@implementation InfoDetailViewController
@synthesize getInfoType,myWebView;
- (void)viewDidLoad
{
    NSLog(@"%@",getInfoType);
    //numberArray =  [[NSMutableArray alloc] init];
  
    
    if([getInfoType isEqualToString:@"Aadhar Card"]) {
        NSURL *websiteUrl = [NSURL URLWithString:@"https://appointments.uidai.gov.in/"];
        NSURLRequest *urlRequest = [NSURLRequest requestWithURL:websiteUrl];
        [myWebView loadRequest:urlRequest];
    }
    else if([getInfoType isEqualToString:@"Ration Card"]) {
        
        NSURL *websiteUrl = [NSURL URLWithString:@"http://www.tn.gov.in/forms/deptname/5"];
        NSURLRequest *urlRequest = [NSURLRequest requestWithURL:websiteUrl];
        [myWebView loadRequest:urlRequest];
    }
    else if([getInfoType isEqualToString:@"Voter ID"]) {
        NSURL *websiteUrl = [NSURL URLWithString:@"http://www.elections.tn.gov.in/eregistration/"];
        NSURLRequest *urlRequest = [NSURLRequest requestWithURL:websiteUrl];
        [myWebView loadRequest:urlRequest];
        
    }
    else if([getInfoType isEqualToString:@"PAN Card"]) {
        NSURL *websiteUrl = [NSURL URLWithString:@"https://tin.tin.nsdl.com/pan/"];
        NSURLRequest *urlRequest = [NSURLRequest requestWithURL:websiteUrl];
        [myWebView loadRequest:urlRequest];
        
    }
    else if([getInfoType isEqualToString:@"Pay EB Bill"]) {
        
        NSURL *websiteUrl = [NSURL URLWithString:@"hhttps://www.tnebnet.org/awp/login"];
        NSURLRequest *urlRequest = [NSURLRequest requestWithURL:websiteUrl];
        [myWebView loadRequest:urlRequest];
    }
    else if([getInfoType isEqualToString:@"Pay Water Tax"]) {
        NSURL *websiteUrl = [NSURL URLWithString:@"http://chennaimetrowater.gov.in/services/online-bills.htm"];
        NSURLRequest *urlRequest = [NSURLRequest requestWithURL:websiteUrl];
        [myWebView loadRequest:urlRequest];
        
    }
    

    [super viewDidLoad];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
