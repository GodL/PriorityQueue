//
//  AppDelegate.m
//  Example
//
//  Created by lihao10 on 2020/6/28.
//  Copyright © 2020 GodL. All rights reserved.
//

#import "AppDelegate.h"
#import "TestModel.h"
#import "PriorityQueue.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
    PriorityQueue *queue = PriorityQueue.new;
    for (int i=0; i<10; i++) {
        TestModel *model = TestModel.new;
        model.time = [[NSDate date] timeIntervalSince1970];
        model.priority = i;
        [queue enqueue:model];
    }
    TestModel *test;
    while ((test = [queue dequeue])) {
        NSLog(@"%@",test);
    }
    // Override point for customization after application launch.
    return YES;
}


#pragma mark - UISceneSession lifecycle


- (UISceneConfiguration *)application:(UIApplication *)application configurationForConnectingSceneSession:(UISceneSession *)connectingSceneSession options:(UISceneConnectionOptions *)options {
    // Called when a new scene session is being created.
    // Use this method to select a configuration to create the new scene with.
    return [[UISceneConfiguration alloc] initWithName:@"Default Configuration" sessionRole:connectingSceneSession.role];
}


- (void)application:(UIApplication *)application didDiscardSceneSessions:(NSSet<UISceneSession *> *)sceneSessions {
    // Called when the user discards a scene session.
    // If any sessions were discarded while the application was not running, this will be called shortly after application:didFinishLaunchingWithOptions.
    // Use this method to release any resources that were specific to the discarded scenes, as they will not return.
}


@end
