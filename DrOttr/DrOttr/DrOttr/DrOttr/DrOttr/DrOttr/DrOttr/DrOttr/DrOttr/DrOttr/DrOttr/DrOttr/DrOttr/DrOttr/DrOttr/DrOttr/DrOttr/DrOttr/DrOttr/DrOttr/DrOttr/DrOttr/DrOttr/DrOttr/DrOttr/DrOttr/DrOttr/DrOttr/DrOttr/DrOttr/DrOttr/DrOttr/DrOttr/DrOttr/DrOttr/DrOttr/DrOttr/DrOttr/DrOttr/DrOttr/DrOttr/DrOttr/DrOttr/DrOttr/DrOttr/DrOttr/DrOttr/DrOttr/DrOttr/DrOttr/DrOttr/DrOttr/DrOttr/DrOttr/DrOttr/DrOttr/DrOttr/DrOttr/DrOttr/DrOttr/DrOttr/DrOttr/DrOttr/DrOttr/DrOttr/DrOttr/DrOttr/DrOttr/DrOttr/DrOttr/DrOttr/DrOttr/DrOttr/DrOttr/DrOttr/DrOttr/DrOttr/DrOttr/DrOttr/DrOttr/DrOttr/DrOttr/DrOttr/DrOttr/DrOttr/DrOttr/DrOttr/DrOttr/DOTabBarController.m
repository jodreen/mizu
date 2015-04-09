//
//  DOTabBarController.m
//  DrOttr
//
//  Created by Jordeen Chang on 3/18/15.
//  Copyright (c) 2015 Jordeen Chang. All rights reserved.
//

#import "DOTabBarController.h"
#import "AppDelegate.h"
#import "DOHomeViewController.h"
#import "DOProfileViewController.h"

@interface DOTabBarController ()

@end

@implementation DOTabBarController

+ (DOTabBarController *)activeCoreTabBarController {
    UIViewController *rootViewController = [AppDelegate instance].window.rootViewController;
    UIViewController *tabBarController = rootViewController.childViewControllers[0];
    return (DOTabBarController *)tabBarController;
}

- (instancetype)init {
    return [super init];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    self.tabBar.tintColor = [UIColor blueColor];
    self.tabBar.translucent = NO;
    
    
    self.viewControllers = ({
        NSArray *titles = @[
                            NSLocalizedString(@"Home", HNNoLocalizationComment),
                            NSLocalizedString(@"Profile", HNNoLocalizationComment)
                            ];

        
        DOProfileViewController *profileViewController = [[DOProfileViewController alloc] init];
        DOHomeViewController *homeViewController = [[DOHomeViewController alloc] init];
        NSArray *rootViewControllers = @[
                                         homeViewController,
                                         profileViewController
                                         ];
        
        NSMutableArray *viewControllers = [NSMutableArray arrayWithCapacity:2];

        for (NSInteger i = 0; i < [rootViewControllers count]; i++) {
            UINavigationController *navigationController = [[UINavigationController alloc] init];
            navigationController.delegate = self;
            navigationController.tabBarItem = [[UITabBarItem alloc] initWithTitle:titles[i] image:NULL tag:i];
            navigationController.viewControllers = @[ rootViewControllers[i] ];
            [viewControllers addObject:navigationController];
        }
        
        viewControllers;
    });
    
}

- (UINavigationController *)activeTabNavigationController {
    return [self.viewControllers objectAtIndex:self.selectedIndex];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
