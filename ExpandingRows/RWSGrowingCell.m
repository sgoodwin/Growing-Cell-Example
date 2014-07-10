//
//  RWSGrowingCell.m
//  ExpandingRows
//
//  Created by Samuel Goodwin on 7/10/14.
//  Copyright (c) 2014 Roundwall Software. All rights reserved.
//

#import "RWSGrowingCell.h"

@implementation RWSGrowingCell

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        // Initialization code
    }
    return self;
}

- (void)awakeFromNib
{
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
