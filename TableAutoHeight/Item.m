//
//  Item.m
//  TableAutoHeight
//
//  Created by Hagen Hübel on 28/04/15.
//  Copyright (c) 2015 ITinance GmbH. All rights reserved.
//

#import "Item.h"

@implementation Item

- (instancetype) initWithTitle:(NSString*) title andDetails:(NSString*) details {
    if(self = [super init]) {
        self.title = title;
        self.details = details;
    }
    return self;
}

+ (instancetype) itemWithTitle:(NSString*) title andDetails:(NSString*) details {
    return [[Item alloc] initWithTitle:title andDetails:details];
}

@end
