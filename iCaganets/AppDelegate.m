//
//  AppDelegate.m
//  iCaganets
//
//  Created by Diego Freniche Brito on 05/12/12.
//  Copyright (c) 2012 Diego Freniche Brito. All rights reserved.
//

#import "AppDelegate.h"

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    [PayPal initializeWithAppID:@"APP-80W284485P519543T" forEnvironment:ENV_NONE];

  //  [NSThread detachNewThreadSelector:@selector(initializePayPal) toTarget:self withObject:nil];
    return YES;
}

-(void)initializePayPal {
    //You must call initializeWithAppID:forEnvironment: or initializeWithAppID: before performing any other
	//action with the library. You must supply your application ID, and you may specify the environment
	//by passing in ENV_LIVE (default), ENV_SANDBOX, or ENV_NONE (offline demo mode).
    
    //self.payPal = [PayPal initializeWithAppID:@"APP-80W284485P519543T"
     //            forEnvironment:ENV_SANDBOX];
    
}

- (void)applicationWillResignActive:(UIApplication *)application
{
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
