//
//  MainTabBarController.m
//  Education
//
//  Created by dev-aozhimin on 16/2/19.
//  Copyright © 2016年 com.aozhimin. All rights reserved.
//

#import "MainTabBarController.h"
#import "UIStoryboard+Helper.h"

typedef NS_ENUM(NSUInteger, MainTabIndex) {
    MainTabIndexHome = 0,
    MainTabIndexLecturing,
    MainTabIndexTutor,
    MainTabIndexApply,
    MainTabIndexMe
};

static NSString * const MainTabTitles[] = {
    [MainTabIndexHome]      = @"首页",
    [MainTabIndexLecturing] = @"开讲",
    [MainTabIndexTutor]     = @"导师",
    [MainTabIndexApply]     = @"申请",
    [MainTabIndexMe]        = @"我"
};

static NSString * const MainTabImageNames[] = {
    [MainTabIndexHome]      = @"icon_tab_home",
    [MainTabIndexLecturing] = @"icon_tab_home",
    [MainTabIndexTutor]     = @"icon_tab_home",
    [MainTabIndexApply]     = @"icon_tab_home",
    [MainTabIndexMe]        = @"icon_tab_home"

};

static NSString * const MainTabSelectedImageNames[] = {
    [MainTabIndexHome]      = @"icon_tab_home_selected",
    [MainTabIndexLecturing] = @"icon_tab_home_selected",
    [MainTabIndexTutor]     = @"icon_tab_home_selected",
    [MainTabIndexApply]     = @"icon_tab_home_selected",
    [MainTabIndexMe]        = @"icon_tab_home_selected"
};

static NSString * const MainTabStoryboardNames[] = {
    [MainTabIndexHome]      = Storyboard_Home,
    [MainTabIndexLecturing] = Storyboard_Lecturing,
    [MainTabIndexTutor]     = Storyboard_Tutor,
    [MainTabIndexApply]     = Storyboard_Apply,
    [MainTabIndexMe]        = Storyboard_Me
};

static NSString * const MainTabViewControllerNames[] = {
    [MainTabIndexHome]      = @"HomeNavigationController",
    [MainTabIndexLecturing] = @"LecturingNavigationController",
    [MainTabIndexTutor]     = @"TutorNavigationController",
    [MainTabIndexApply]     = @"ApplyNavigationController",
    [MainTabIndexMe]        = @"MeNavigationController"
};

@interface MainTabBarController ()

@end

@implementation MainTabBarController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self initTabBar];
}

- (void)initTabBar {
    [self.tabBar setTranslucent:NO];
    [self.tabBar setClipsToBounds:YES];
    NSMutableArray *viewControllers = [NSMutableArray new];
    for (NSInteger i = 0; i < sizeof(MainTabStoryboardNames) / sizeof(MainTabStoryboardNames[0]); i++) {
        UIViewController *viewController = [UIStoryboard storyboardName:MainTabStoryboardNames[i]
                                           viewControllerWithIdentifier:MainTabViewControllerNames[i]];
        [viewControllers addObject:viewController];
    }
    self.viewControllers = viewControllers;
    NSArray *itemArray = self.tabBar.items;
    for (NSInteger i = 0; i < itemArray.count; i ++) {
        UITabBarItem *item = itemArray[i];
        item.title                   = MainTabTitles[i];
        item.titlePositionAdjustment = UIOffsetMake(0, -4);
        item.image                   = [UIImage imageNamed:MainTabImageNames[i]];
        item.selectedImage           = [UIImage imageNamed:MainTabSelectedImageNames[i]];
    }
}


@end
