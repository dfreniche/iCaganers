//
//  ShopItem.m
//  iCaganets
//
//  Created by Diego Freniche Brito on 27/11/12.
//  Copyright (c) 2012 Diego Freniche Brito. All rights reserved.
//

#import "ShopItem.h"

@implementation ShopItem

- (id)init {
    return [self initWithId:[NSNumber numberWithInt:1] name:@"Caganet" shortDescription:@"" price:@0.0];
}

// designated initializer

- (id)initWithId:(NSNumber *)id name:(NSString *)name shortDescription:(NSString *)shortDescription price:(NSNumber *)price {
    if (self = [super init]) {
        _id = id;
        _name = name;
        _shortDescription = shortDescription;
        _price = price;
            }
    
    return self;
}

-(NSDecimalNumber *)taxes {
    float f = [self.price floatValue];
    f = f*0.21;
    return [NSDecimalNumber decimalNumberWithString:[NSString stringWithFormat:@"%f", f] ];
}

@end
