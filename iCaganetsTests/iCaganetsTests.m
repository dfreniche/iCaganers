//
//  iCaganetsTests.m
//  iCaganetsTests
//
//  Created by Diego Freniche Brito on 05/12/12.
//  Copyright (c) 2012 Diego Freniche Brito. All rights reserved.
//

#import "iCaganetsTests.h"
#import "ItemList.h"

@implementation iCaganetsTests

- (void)setUp
{
    [super setUp];
    
    // Set-up code here.
}

- (void)tearDown
{
    // Tear-down code here.
    
    [super tearDown];
}

- (void)testCanCreateItemListFromFile
{
    ItemList *list = [ItemList itemListWithContentsOfFile:@"CaganetData"];
    STAssertNotNil(list, @"OMG!");
    
    STAssertEquals([list count], (NSUInteger)1, @"Count must be %d but its %d", 1, [list count]);

}

@end
