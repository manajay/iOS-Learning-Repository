//
//  TIAppRootViewController.h
//  TIFastApp
//
//  Created by manajay on 2025/5/21.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

// 声明弱符号函数实现，外部可以通过强符号覆盖
FOUNDATION_EXTERN UIViewController* TIGetHomeViewController(void);
FOUNDATION_EXTERN UIViewController* TIGetAboutViewController(void);

@interface TIAppRootViewController : UITabBarController

// 覆盖实现
- (NSArray<UIViewController *> *)setupItems;

@end

NS_ASSUME_NONNULL_END
