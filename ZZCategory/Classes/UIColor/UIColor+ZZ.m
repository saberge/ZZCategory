//
//  UIColor+ZZ.m
//  AFNetworking
//
//  Created by laixian on 2019/10/19.
//

#import "UIColor+ZZ.h"

@implementation UIColor (ZZ)

+ (UIColor *)colorWithHexStr:(NSString *)cStr {
    return [self colorWithHexStr:cStr alpha:1.0f];
}

+ (UIColor *)colorWithHexStr:(NSString *)cStr alpha:(CGFloat)alpha
{
    if ([cStr hasPrefix:@"#"]) {
        cStr = [cStr substringFromIndex:1];
    }
    NSScanner *scanner = [NSScanner scannerWithString:cStr];
    unsigned hexNum;
    if (![scanner scanHexInt:&hexNum]) return nil;
    
    int r = (hexNum >> 16) & 0xFF;
    int g = (hexNum >> 8) & 0xFF;
    int b = (hexNum) & 0xFF;
    return [UIColor colorWithRed:r / 255.0f
                           green:g / 255.0f
                            blue:b / 255.0f
                           alpha:alpha];
}

@end
