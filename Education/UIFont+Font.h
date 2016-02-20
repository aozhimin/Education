//
//  UIFont+Font.h
//  Education
//
//  Created by dev-aozhimin on 16/2/19.
//  Copyright © 2016年 com.aozhimin. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIFont (Font)

// Basic
+ (UIFont *)largeTitleFont;
+ (UIFont *)largeBoldTitleFont;
+ (UIFont *)titleFont;
+ (UIFont *)boldTitleFont;
+ (UIFont *)mediumTitleFont;
+ (UIFont *)smallTitleFont;
+ (UIFont *)boldSmallTitleFont;
+ ( UIFont *)tinnyTitleFont;

// UINavigationBar
+ (UIFont *)navigationBarItemFont;
+ (UIFont *)navigationBarTitleFont;

@end
