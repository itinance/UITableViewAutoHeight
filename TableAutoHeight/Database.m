//
//  Database.m
//  TableAutoHeight
//
//  Created by Hagen Hübel on 02.05.15.
//  Copyright (c) 2015 ITinance GmbH. All rights reserved.
//

#import "Database.h"

@implementation Database

@synthesize items;

- (instancetype) init {
    if(self = [super init]) {
        
        items = [[NSMutableArray alloc] init];
        
        for(int i = 0; i < 20; ++i) {
            [items addObject:[Item itemWithTitle:@"First Item" andDetails:@"Lorem ipsum dolor sit amet, consetetur "]];
            [items addObject:[Item itemWithTitle:@"Second Item" andDetails:@"Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod        tempor invidunt ut labore et dolore magna aliquy"]];
            [items addObject:[Item itemWithTitle:@"Third Item" andDetails:@"Lorem ipsum dolor sit amet, consetetur sadipscing elitrLorem ipsum dolor sit amet, consetetur sadipscing elitr Lorem ipsum dolor sit amet, consetetur sadipscing elitr Lorem ipsum dolor sit amet, consetetur sadipscing elitr"]];
        }
        
        
    }
    return self;
}
@end
