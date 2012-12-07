//
//  ShopItem.h
//  iCaganets
//
//  Created by Diego Freniche Brito on 27/11/12.
//  Copyright (c) 2012 Diego Freniche Brito. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface ShopItem : NSObject
// id, name, shortDescription, description, photos[], videos[], latitude, longitude, address, tags[], pinIcon, thumbImage, url

@property (nonatomic, strong) NSNumber *id;
@property (nonatomic, strong) NSString *name;
@property (nonatomic, strong) NSString *shortDescription;
@property (nonatomic, strong) NSString *photo;
@property (nonatomic, strong) NSString *thumbImageName;
@property (nonatomic, strong) NSNumber *price;
@property (nonatomic, strong) NSDecimalNumber *taxes;

- (id)initWithId:(NSNumber *)id name:(NSString *)name shortDescription:(NSString *)shortDescription price:(NSNumber *)price;

@end
