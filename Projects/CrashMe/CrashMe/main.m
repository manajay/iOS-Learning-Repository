//
//  main.m
//  CrashMe
//
//  Created by manajay on 2025/5/16.
//

#import <UIKit/UIKit.h>
#import <TIFastApp/TIAppDelegate.h>

int main(int argc, char * argv[]) {
    NSString * appDelegateClassName;
    @autoreleasepool {
        // Setup code that might create autoreleased objects goes here.
        appDelegateClassName = NSStringFromClass([TIAppDelegate class]);
    }
    return UIApplicationMain(argc, argv, nil, appDelegateClassName);
}
