//
//  UIColor+EDHexColor.m
//  GG
//
//  Created by 高 見龍 on 2014/3/29.
//  Copyright (c) 2014年 高 見龍. All rights reserved.
//

#import "UIColor+EDHexColor.h"

@implementation UIColor (EDHexColor)

+ (UIColor *) colorWithHexString:(NSString *) hex
{
    return [UIColor colorWithHexString:hex withAlpha:1.0f];
}

+ (UIColor *) colorWithHexString:(NSString *) hex withAlpha:(CGFloat) alpha
{
    NSString* cString = [[hex stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]] uppercaseString];

    // String should be 6 or 8 characters
    if ([cString length] < 6) return [UIColor grayColor];

    // strip 0X if it appears
    if ([cString hasPrefix:@"0X"]) cString = [cString substringFromIndex:2];

    // if hex string begin with "#"..
    if ([cString hasPrefix:@"#"]) cString = [cString substringFromIndex:1];

    if ([cString length] != 6) return  [UIColor grayColor];

    // Separate into r, g, b substrings
    NSRange range;
    range.location = 0;
    range.length = 2;
    NSString* rString = [cString substringWithRange:range];

    range.location = 2;
    NSString* gString = [cString substringWithRange:range];

    range.location = 4;
    NSString* bString = [cString substringWithRange:range];

    unsigned int r, g, b;

    // Scan values
    [[NSScanner scannerWithString:rString] scanHexInt:&r];
    [[NSScanner scannerWithString:gString] scanHexInt:&g];
    [[NSScanner scannerWithString:bString] scanHexInt:&b];

    return [UIColor colorWithRed:((CGFloat) r / 255.0f)
                           green:((CGFloat) g / 255.0f)
                            blue:((CGFloat) b / 255.0f)
                           alpha:alpha];
}

@end
