//
//  TISceneDelegate.m
//  TIFastApp
//
//  Created by manajay on 2025/5/16.
//

#import "TISceneDelegate.h"
#import "TIAppRootViewController.h"

@interface TISceneDelegate ()

@end

@implementation TISceneDelegate

- (void)scene:(UIScene *)scene willConnectToSession:(UISceneSession *)session options:(UISceneConnectionOptions *)connectionOptions {
    // Use this method to optionally configure and attach the UIWindow `window` to the provided UIWindowScene `scene`.
    // If using a storyboard, the `window` property will automatically be initialized and attached to the scene.
    // This delegate does not imply the connecting scene or session are new (see `application:configurationForConnectingSceneSession` instead).
    if (![scene isKindOfClass:[UIWindowScene class]]) {
        return;
    }
    UIWindowScene *windowScene = (UIWindowScene *)scene;
    UIWindow *window = [[UIWindow alloc] initWithWindowScene:windowScene];
    window.rootViewController = [[TIAppRootViewController alloc] init];
    [window makeKeyAndVisible];
    self.window = window;
}

@end
