//

//
//  Created by Diego Freniche Brito on 27/11/12.
//  Copyright (c) 2012 Diego Freniche Brito. All rights reserved.
//

#import "ItemList.h"

@implementation ItemList


#pragma mark - lazy getters


- (void) loadDataIntoItemListUsingArray:(NSArray *)array {
    NSMutableArray *tempPois = [[NSMutableArray alloc] initWithCapacity:[array count]];
    for (NSDictionary *d in array) {
        NSNumberFormatter * f = [[NSNumberFormatter alloc] init];
        [f setNumberStyle:NSNumberFormatterNoStyle];
        
        ShopItem *i = [[ShopItem alloc] initWithId:[d objectForKey:@"id"]
                                                            name:[d objectForKey:@"name"]
                                                shortDescription:[d objectForKey:@"shortDescription"]
                                                        price:[d objectForKey:@"price"]];

        [i setPhoto:[d objectForKey:@"photo"]];
        [i setThumbImageName:[d objectForKey:@"thumbImageName"]];
        [tempPois addObject:i];
    }
    
    [self setItems:[NSArray arrayWithArray:tempPois]];

}
+ (ItemList *) itemListWithContentsOfFile:(NSString *)plistFileName {
    ItemList *list = [[ItemList alloc] init];
    
    NSString* plistPath = [[NSBundle mainBundle] pathForResource:plistFileName ofType:@"plist"];
    
    NSArray *array = [NSArray arrayWithContentsOfFile:plistPath];
    if (!array) {
        return nil;
    }
    [list loadDataIntoItemListUsingArray:array];
    
    return list;
}

- (NSUInteger)count {
    return [self.items count];
}

@end
