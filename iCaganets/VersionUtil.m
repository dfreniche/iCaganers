//
//  VersionUtil.m
//  MyEvents
//
//  Created by Diego Freniche Brito on 23/11/10.
//  Copyright 2010 Freelance. All rights reserved.
//

#import "VersionUtil.h"


@implementation VersionUtil

+ (NSString *)versionAsString {
	NSDictionary *infoDictionary = [[NSBundle mainBundle] infoDictionary];
    // NSString *name = [infoDictionary objectForKey:@"CFBundleDisplayName"];
    NSString *version = [infoDictionary objectForKey:@"CFBundleShortVersionString"];
    // NSString *build = [infoDictionary objectForKey:@"CFBundleVersion"];
    // NSString *label = [NSString stringWithFormat:@"%@ v%@ (build %@)",name,version,build];
	NSString *label = [NSString stringWithFormat:@"v%@", version];

	return label;
}

@end
