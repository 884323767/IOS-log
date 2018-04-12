//
//  AppDelegate.m
//  teb
//
//  Created by lewei li on 12/04/2018.
//  Copyright © 2018 lewei li. All rights reserved.
//

#import "AppDelegate.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    //应用启动并进行初始化时会调用该方法。这个阶段会实例化根视图控制器。
    NSLog(@"%s", "application:didFinishLaunchingWithOptions: Not runing -> Inactive");
    return YES;
}


- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
    //应用进入前台非活动状态时调用该方法。这个阶段可以恢复UI的状态。

    NSLog(@"%s","applicationDidBecomeActive: Inactive -> active");
}


- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    //应用从活动状态进入到非活动状态时调用该方法。这个阶段可以保存UI的状态。
    NSLog(@"%s", "applicationWillResignActive: active -> Inactive");
}


- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
    //应用进入后台或挂起时调用该方法。这个阶段可以保存用户数据，释放一些资源（例如释放数据库资源等）。
    NSLog(@"%s","applicationDidEnterBackground: Background -> Suspended");

}


- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    //应用从后台再次回到前台，但是还没有处于活动状态时调用该方法。这个阶段可以恢复用户数据。
    NSLog(@"%s","applicationWillEnterForeground: Suspended -> Background -> Inactive");
}


- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    //应用被终止时调用该方法，但内存清除时除外。 这个阶段释放一些资源，也可以保存用户数据。
    NSLog(@"%s","applicationWillTerminate: Suspended -> Not runing");  
}


@end
