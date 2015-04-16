//
//  DORootViewController.m
//  DrOttr
//
//  Created by Jordeen Chang on 3/18/15.
//  Copyright (c) 2015 Jordeen Chang. All rights reserved.
//

#import "DORootViewController.h"
#import "DOTabBarController.h"
#import "LoginViewController.h"
#import "UIExtensions.h"

@interface DORootViewController ()

@property (nonatomic, strong) UIViewController *currentViewController;

@end

@implementation DORootViewController



- (void)viewDidLoad {
    [super viewDidLoad];
    UIViewController *launchingViewController = nil;
    if (![PFUser currentUser]) {
        launchingViewController = [self newLoginViewController];
    } else {
        launchingViewController = [self newInitialViewController];
    }
    
    [self showViewController:launchingViewController];
}

- (UIViewController *)newInitialViewController {
    return [[DOTabBarController alloc] init];

}

- (UIViewController *)newLoginViewController {
    return [[LoginViewController alloc] init];
}

- (void)pushNewTabBarControllerFromLogin:(LoginViewController *)oldVC {
    UIViewController *launchingViewController = [self newInitialViewController];
    [self addChildViewController:launchingViewController];
}

- (void)showViewController:(UIViewController *)initialViewController {
    [self addChildViewController:initialViewController];
    [self.view addSubview:initialViewController.view];
    self.currentViewController = initialViewController;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
