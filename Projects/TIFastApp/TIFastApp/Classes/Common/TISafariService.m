//
//  TISafariService.m
//  TIFastApp
//
//  Created by manajay on 2025/5/22.
//

#import "TISafariService.h"
@import SafariServices;

@implementation TISafariService

+ (void)openSafariWithURL:(NSURL *)url {
    NSAssert(url, @"TISafariService openSafariWithURL url is nil");
    if (!url) {
        return;
    }
    SFSafariViewController *safariVC = [[SFSafariViewController alloc] initWithURL:url];
    [[UIApplication sharedApplication].keyWindow.rootViewController presentViewController:safariVC animated:YES completion:nil];
}

@end
