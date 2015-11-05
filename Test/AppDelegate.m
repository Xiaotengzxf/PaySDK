//
//  AppDelegate.m
//  Test
//
//  Created by 张晓飞 on 15/3/28.
//  Copyright (c) 2015年 张晓飞. All rights reserved.
//

#import "AppDelegate.h"
#import <PaySDK/PaySDK.h>

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
    //配置参数
    //[PayService initWithAppID:@"分配的APPID" andMerchantId:@"分配的MerchantId" andWeChatPay:@"wx20151028"];
    
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application {
   
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    
}


- (void)applicationWillEnterForeground:(UIApplication *)application {
    
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    
}

- (void)applicationWillTerminate:(UIApplication *)application {
    
}

- (BOOL)application:(UIApplication *)application openURL:(NSURL *)url sourceApplication:(NSString *)sourceApplication annotation:(id)annotation
{
    [PayService openURL:url];
    return YES;
}

@end
