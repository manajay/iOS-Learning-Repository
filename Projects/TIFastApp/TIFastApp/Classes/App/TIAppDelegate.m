//
//  TIAppDelegate.m
//  TIFastApp
//
//  Created by manajay on 2025/5/16.
//

#import "TIAppDelegate.h"
#import "TIAppRootViewController.h"

@interface TIAppDelegate ()

@end

@implementation TIAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    self.window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
    self.window.rootViewController = [[TIAppRootViewController alloc] init];
    [self.window makeKeyAndVisible];
    return YES;
}

@end
