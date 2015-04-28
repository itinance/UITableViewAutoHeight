//
//  ExampleTableViewCell.m
//  TableAutoHeight
//
//  Created by Hagen Hübel on 28/04/15.
//  Copyright (c) 2015 ITinance GmbH. All rights reserved.
//

#import "ExampleTableViewCell.h"

@implementation ExampleTableViewCell

- (void)awakeFromNib {
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

- (void)layoutSubviews
{
    [super layoutSubviews];
    
    // Make sure the contentView does a layout pass here so that its subviews have their frames set, which we
    // need to use to set the preferredMaxLayoutWidth below.
    [self.contentView setNeedsLayout];
    [self.contentView layoutIfNeeded];
    
    
    self.details.preferredMaxLayoutWidth = CGRectGetWidth(self.details.frame);
}


@end
