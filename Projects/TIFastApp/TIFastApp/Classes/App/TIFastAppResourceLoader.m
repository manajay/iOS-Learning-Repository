//
//  TIFastAppResourceLoader.m
//  TIFastApp
//
//  Created by manajay on 2025/5/22.
//

#import "TIFastAppResourceLoader.h"

@implementation TIFastAppResourceLoader

+ (NSBundle *)resourceBuddle {
    NSBundle *bundle = [NSBundle bundleForClass:[self class]];
    NSString *path = [bundle pathForResource:@"TIFastAppBundle" ofType:@"bundle"];
    if (!path) {
        return nil;
    }
    return [NSBundle bundleWithPath:path];
}

+ (UIImage *)imageNamed:(NSString *)name {
    return [UIImage imageNamed:name inBundle:[self resourceBuddle] compatibleWithTraitCollection:nil];
}

@end
