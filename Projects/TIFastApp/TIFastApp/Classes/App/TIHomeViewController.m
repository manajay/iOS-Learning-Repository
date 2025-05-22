//
//  TIHomeViewController.m
//  TIFastApp
//
//  Created by manajay on 2025/5/21.
//

#import "TIHomeViewController.h"
#import <TIFastApp/TIFastAppResourceLoader.h>

UIViewController* TIGetHomeViewController(void) {
    UIViewController *vc = [[UINavigationController alloc] initWithRootViewController:[[TIHomeViewController alloc] init]];
    vc.tabBarItem = [[UITabBarItem alloc] initWithTitle:@"首页"
                                                  image:[TIFastAppResourceLoader imageNamed:@"home"]
                                          selectedImage:[TIFastAppResourceLoader imageNamed:@"home_selected"]];
    return vc;
}

@interface TIHomeViewController ()

@end

@implementation TIHomeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor whiteColor];
    self.title = @"首页";
}

@end
