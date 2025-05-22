//
//  TIAppRootViewController.m
//  TIFastApp
//
//  Created by manajay on 2025/5/21.
//

#import "TIAppRootViewController.h"
#import "TIAboutViewController.h"
#import "TIHomeViewController.h"

__attribute__ ((weak)) UIViewController* TIGetHomeViewController(void) {
    UIViewController *vc = [[UIViewController alloc] init];
    vc.tabBarItem = [[UITabBarItem alloc] initWithTitle:@"首页" image:nil selectedImage:nil];
    return vc;
}

__attribute__ ((weak)) UIViewController* TIGetAboutViewController(void) {
    UIViewController *vc = [[UIViewController alloc] init];
    vc.tabBarItem = [[UITabBarItem alloc] initWithTitle:@"关于" image:nil selectedImage:nil];
    return vc;
}

@implementation TIAppRootViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    //
    NSArray *items = [self setupItems];
    [self setViewControllers:items animated:NO];
    self.view.backgroundColor = [UIColor whiteColor];
    self.tabBar.tintColor = [UIColor colorWithRed:92/255.0 green:121/255.0 blue:243/255.0 alpha:1.0];
    self.tabBar.unselectedItemTintColor = [UIColor colorWithRed:152/255.0 green:152/255.0 blue:152/255.0 alpha:1.0];
    self.tabBar.backgroundColor = [UIColor whiteColor];
    self.tabBar.shadowImage = [UIImage new];
    self.tabBar.backgroundImage = [UIImage new];

    self.tabBar.layer.shadowColor = [UIColor grayColor].CGColor;
    self.tabBar.layer.shadowOffset = CGSizeMake(0, -5);
    self.tabBar.layer.shadowOpacity = 0.3;
}

- (NSArray<UIViewController *> *)setupItems {
    UIViewController *homeItem = TIGetHomeViewController();
    UIViewController *aboutItem = TIGetAboutViewController();
    return @[homeItem,aboutItem];
}

@end
