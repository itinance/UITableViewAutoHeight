//
//  Example2TableViewCell.h
//  TableAutoHeight
//
//  Created by Hagen Hübel on 02.05.15.
//  Copyright (c) 2015 ITinance GmbH. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface Example2TableViewCell : UITableViewCell

@property (weak, nonatomic) IBOutlet UILabel *lblTitle;
@property (weak, nonatomic) IBOutlet UILabel *lblSubtitle;
@property (weak, nonatomic) IBOutlet UILabel *lblDetails;

@end
