//
//  UIColor+EDHexColor.h
//  GG
//
//  Created by 高 見龍 on 2014/3/29.
//  Copyright (c) 2014年 高 見龍. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIColor (EDHexColor)

+ (UIColor *) colorWithHexString:(NSString *) hex;
+ (UIColor *) colorWithHexString:(NSString *) hex withAlpha:(CGFloat) alpha;

@end
