//
//  AppDelegate.m
//  Git Test
//
//  Created by Wankil Jung on 2018. 8. 14..
//  Copyright © 2018년 Wankil Jung. All rights reserved.
//

#import "AppDelegate.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    if (IS_PRODUCTION) {
        NSLog(@"스토어 배포!!");
        if (SERVER_MODE == 0) {
            NSLog(@"운영서버!!");
        } else if(SERVER_MODE == 1) {
            NSLog(@"검증서버!!");
        } else {
            NSLog(@"개발서버!!");
        }
    } else {
        NSLog(@"내부 배포!!");
        if (SERVER_MODE == 0) {
            NSLog(@"운영서버!!");
        } else if(SERVER_MODE == 1) {
            NSLog(@"검증서버!!");
        } else {
            NSLog(@"개발서버!!");
        }
    }
    return YES;
}


- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
}


- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    
    NSLog(@"devdev");
}


- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
}


- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}


- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}


@end
