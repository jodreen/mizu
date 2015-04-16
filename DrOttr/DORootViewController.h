//
//  DORootViewController.h
//  DrOttr
//
//  Created by Jordeen Chang on 3/18/15.
//  Copyright (c) 2015 Jordeen Chang. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "LoginViewController.h"

@interface DORootViewController : UIViewController

- (void)pushNewTabBarControllerFromLogin:(LoginViewController *)oldVC;

@end
