//
//  UIFont+Font.m
//  Education
//
//  Created by dev-aozhimin on 16/2/19.
//  Copyright © 2016年 com.aozhimin. All rights reserved.
//

#import "UIFont+Font.h"

#define YCS_SYNTHESIZE_SINGLETON_FOR_BOLD_FONT(fontName, fontSize, isBold) \
+ (nonnull UIFont *)fontName { \
static UIFont *font; \
static dispatch_once_t onceToken; \
dispatch_once(&onceToken, ^{ \
font = isBold ? [UIFont boldSystemFontOfSize:fontSize] : [UIFont systemFontOfSize:fontSize]; \
}); \
return font; \
} \

#define YCS_SYNTHESIZE_SINGLETON_FOR_FONT(fontName, fontSize) \
YCS_SYNTHESIZE_SINGLETON_FOR_BOLD_FONT(fontName, fontSize, NO) \


static CGFloat const largeTitleFontSize  = 18.0;
static CGFloat const titleFontSize       = 15.0;
static CGFloat const mediumTitleFontSize = 14.0;
static CGFloat const smallTitleFontSize  = 12.0;
static CGFloat const tinnyTitleFontSize  = 10.0;

@implementation UIFont (Font)

#pragma mark - Basic

YCS_SYNTHESIZE_SINGLETON_FOR_FONT(largeTitleFont, largeTitleFontSize)

YCS_SYNTHESIZE_SINGLETON_FOR_BOLD_FONT(largeBoldTitleFont, largeTitleFontSize, YES)

YCS_SYNTHESIZE_SINGLETON_FOR_FONT(titleFont, titleFontSize)

YCS_SYNTHESIZE_SINGLETON_FOR_BOLD_FONT(boldTitleFont, titleFontSize, YES)

YCS_SYNTHESIZE_SINGLETON_FOR_FONT(mediumTitleFont, mediumTitleFontSize)

YCS_SYNTHESIZE_SINGLETON_FOR_FONT(smallTitleFont, smallTitleFontSize)

YCS_SYNTHESIZE_SINGLETON_FOR_BOLD_FONT(boldSmallTitleFont, smallTitleFontSize, YES)

YCS_SYNTHESIZE_SINGLETON_FOR_FONT(tinnyTitleFont, tinnyTitleFontSize)

#pragma mark - UINavigationBar

+ (UIFont *)navigationBarItemFont {
    return [self titleFont];
}

+ (UIFont *)navigationBarTitleFont {
    return [self titleFont];
}


@end
