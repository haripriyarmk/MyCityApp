//
//  HelpCell.m
//  MyChennai
//
//  Created by iphone developers on 04/04/16.
//  Copyright (c) 2016 iphone developers. All rights reserved.
//

#import "HelpCell.h"

@implementation HelpCell
@synthesize titleline,descline;

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        // Initialization code
    }
    return self;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];
    
    // Configure the view for the selected state
}

@end
