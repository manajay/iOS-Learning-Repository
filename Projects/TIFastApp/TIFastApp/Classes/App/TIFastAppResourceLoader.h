//
//  TIFastAppResourceLoader.h
//  TIFastApp
//
//  Created by manajay on 2025/5/22.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface TIFastAppResourceLoader : NSObject

/// 当前Pod的资源包
+ (NSBundle *)resourceBuddle;


/// 获取图片资源，仅限当前Pod内
/// - Parameter name: 图片名称
/// - Returns: 图片
+ (UIImage *)imageNamed:(NSString *)name;

@end

NS_ASSUME_NONNULL_END
