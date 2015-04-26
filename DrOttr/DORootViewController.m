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
    [self cycleFromViewController:oldVC toViewController:launchingViewController];
}

- (void)pushNewLoginControllerFromTab:(DOTabBarController *)oldVC {
    UIViewController *launchingViewController = [self newLoginViewController];
    [self cycleFromViewController:oldVC toViewController:launchingViewController];
}

- (void)cycleFromViewController:(UIViewController*)oldVC
               toViewController:(UIViewController*)newVC {
    [oldVC willMoveToParentViewController:nil];
    [self addChildViewController:newVC];

    newVC.view.frame = newVC.view.frame;
    CGRect endFrame = oldVC.view.frame;

    [self transitionFromViewController: oldVC
                      toViewController: newVC
                              duration: 0.1
                               options:0
                            animations:^{
                                newVC.view.frame = oldVC.view.frame;
                                oldVC.view.frame = endFrame;
                            }
                            completion:^(BOOL finished) {
                                [oldVC removeFromParentViewController];
                                [newVC didMoveToParentViewController:self];
                            }];
}

- (void)showViewController:(UIViewController *)initialViewController {
    [self addChildViewController:initialViewController];
    self.currentViewController = initialViewController;
    [self.view addSubview:initialViewController.view];

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
