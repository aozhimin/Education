//
//  UIColor+Color.m
//  Education
//
//  Created by dev-aozhimin on 16/2/19.
//  Copyright © 2016年 com.aozhimin. All rights reserved.
//

#import "UIColor+Color.h"

#define SYNTHESIZE_SINGLETON_FOR_COLOR(colorName, colorHexValue) \
YCS_SYNTHESIZE_SINGLETON_FOR_ALPHA_COLOR(colorName, colorHexValue, 1.0)

#define SYNTHESIZE_SINGLETON_FOR_ALPHA_COLOR(colorName, colorHexValue, alpha) \
+ (nonnull UIColor *)colorName { \
static UIColor *color; \
static dispatch_once_t onceToken; \
dispatch_once(&onceToken, ^{ \
color = UIColorFromHexWithAlpha(colorHexValue, alpha); \
}); \
return color; \
} \

static NSInteger const whiteColorHexValue                  = 0xFFFFFF;


@implementation UIColor (Color)

//YCS_SYNTHESIZE_SINGLETON_FOR_COLOR(, controllerViewBackColorHexValue)
//
//
//#pragma mark - UINavigationBar
//
//+ (UIColor *)navigationBarBackgroundColor {
//    return [self ycsDarkPurpleColor];
//}


@end
