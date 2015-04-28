//
//  Item.h
//  TableAutoHeight
//
//  Created by Hagen Hübel on 28/04/15.
//  Copyright (c) 2015 ITinance GmbH. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Item : NSObject

@property (nonatomic, copy) NSString* title;
@property (nonatomic, copy) NSString* details;

- (instancetype) initWithTitle:(NSString*) title andDetails:(NSString*) details;

+ (instancetype) itemWithTitle:(NSString*) title andDetails:(NSString*) details;

@end
