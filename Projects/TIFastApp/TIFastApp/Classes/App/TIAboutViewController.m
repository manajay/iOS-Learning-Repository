//
//  TIAboutViewController.m
//  TIFastApp
//
//  Created by manajay on 2025/5/21.
//

#import "TIAboutViewController.h"
#import <Masonry/Masonry.h>
#import <TIFastApp/TISafariService.h>
#import <TIFastApp/TIFastAppResourceLoader.h>

UIViewController* TIGetAboutViewController(void) {
    UIViewController *vc = [[UINavigationController alloc] initWithRootViewController:[[TIAboutViewController alloc] init]];
    vc.tabBarItem = [[UITabBarItem alloc] initWithTitle:@"关于"
                                                  image:[TIFastAppResourceLoader imageNamed:@"personal"]
                                          selectedImage:[TIFastAppResourceLoader imageNamed:@"personal_selected"]];
    return vc;
}

NSString *const kTIAboutViewControllerBlogURL = @"https://www.todayios.com";

@interface TIAboutViewController ()

@property (nonatomic, strong) UILabel *aboutLabel;
@property (nonatomic, strong) UILabel *blogLabel;

@end

@implementation TIAboutViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    self.title = @"关于";
    [self setupUI];
}

- (void)setupUI {
    [self.view addSubview:self.aboutLabel];
    [self.aboutLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.center.equalTo(self.view);
        make.left.right.equalTo(self.view).inset(20);
    }];
    [self.view addSubview:self.blogLabel];
    [self.blogLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.equalTo(self.view);
        if (@available(iOS 11.0, *)) {
            make.bottom.equalTo(self.view.mas_safeAreaLayoutGuideBottom).offset(-20);
        } else {
            make.bottom.equalTo(self.view).offset(-20);
        }
        make.left.right.equalTo(self.view).inset(20);
    }];
}

#pragma mark - Event
- (void)tapBlogLabel {
    [TISafariService openSafariWithURL:[NSURL URLWithString:kTIAboutViewControllerBlogURL]];
}

#pragma mark - Getter

- (UILabel *)aboutLabel {
    if (!_aboutLabel) {
        _aboutLabel = [[UILabel alloc] init];
        _aboutLabel.text = @"简单生活，快乐学习，知识需要积累，学习永无止境。好记性不如烂笔头，多动手，多思考，多总结。iOS开发者、动漫爱好者、喜爱山山水水，到处逛逛。";
        _aboutLabel.textColor = [UIColor blackColor];
        _aboutLabel.textAlignment = NSTextAlignmentCenter;
        _aboutLabel.font = [UIFont systemFontOfSize:20 weight:UIFontWeightMedium];
        _aboutLabel.numberOfLines = 0;
    }
    return _aboutLabel;
}

- (UILabel *)blogLabel {
    if (!_blogLabel) {
        _blogLabel = [[UILabel alloc] init];
        _blogLabel.text = @"查看我的博客";
        _blogLabel.textColor = [UIColor blueColor];
        _blogLabel.textAlignment = NSTextAlignmentCenter;
        _blogLabel.font = [UIFont systemFontOfSize:16];
        _blogLabel.userInteractionEnabled = YES;
        UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(tapBlogLabel)];
        [_blogLabel addGestureRecognizer:tap];
    }
    return _blogLabel;
}


@end
