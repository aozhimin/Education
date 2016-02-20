//
//  UIStoryboard+Helper.h
//  Education
//
//  Created by dev-aozhimin on 16/2/19.
//  Copyright © 2016年 com.aozhimin. All rights reserved.
//

#import <UIKit/UIKit.h>

#define Storyboard_Main      @"Main"
#define Storyboard_Home      @"Home"
#define Storyboard_Lecturing @"Lecturing"
#define Storyboard_Tutor     @"Tutor"
#define Storyboard_Apply     @"Apply"
#define Storyboard_Me        @"Me"

@interface UIStoryboard (Helper)

+ (id)storyboardName:(NSString *)name viewControllerWithIdentifier:(NSString *)identifier;

@end
