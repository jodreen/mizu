//
//  DORootViewController.m
//  DrOttr
//
//  Created by Jordeen Chang on 3/18/15.
//  Copyright (c) 2015 Jordeen Chang. All rights reserved.
//

#import "DORootViewController.h"
#import "DOTabBarController.h"

@interface DORootViewController ()

@property (nonatomic, strong) UIViewController *currentViewController;

@end

@implementation DORootViewController


- (void)viewDidLoad {
    [super viewDidLoad];
    UIViewController *tabBarController = [[DOTabBarController alloc] init];
    [self showViewController:tabBarController];
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
