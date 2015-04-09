//
//  DOHomeViewController.m
//  DrOttr
//
//  Created by Jordeen Chang on 3/18/15.
//  Copyright (c) 2015 Jordeen Chang. All rights reserved.
//

#import "DOHomeViewController.h"
#import "DOHomeView.h"

@interface DOHomeViewController ()

@end

@implementation DOHomeViewController

-(void)loadView {
    self.view = [[DOHomeView alloc] init];
}


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
