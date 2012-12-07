//
//
//  Created by Diego Freniche Brito on 27/11/12.
//  Copyright (c) 2012 Diego Freniche Brito. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ShopItem.h"

@interface ItemList : NSObject

// id, name, description, POIs[]

@property (nonatomic, strong) NSArray *items;

+ (ItemList *) itemListWithContentsOfFile:(NSString *)plistFileName;
- (NSUInteger)count;

- (void) loadDataIntoItemListUsingArray:(NSArray *)array;

@end
