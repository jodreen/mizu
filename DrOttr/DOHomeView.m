//
//  DOHomeView.m
//  DrOttr
//
//  Created by Jordeen Chang on 4/1/15.
//  Copyright (c) 2015 Jordeen Chang. All rights reserved.
//
#import "DOHomeView.h"
#import "UIExtensions.h"

@interface DOHomeView ()

@property (nonatomic) UILabel *titleLabel;

@end

@implementation DOHomeView


- (instancetype)init {
    self = [super init];
    if (self) {
        [self createSubviews];
        [self setNeedsUpdateConstraints];
        self.backgroundColor = [UIColor blueColor];
    }
    return self;
}

- (void)createSubviews {
    
    _titleLabel = [({
        UILabel *label = [[UILabel alloc] init];
        label.text = @"You drank something water today";
        label.font = [UIFont boldSystemFontOfSize:24.0];
        label.textAlignment = NSTextAlignmentCenter;
        label.textColor = [UIColor whiteColor];
        label;
    }) do_addToSuperview:self];
}

- (void)updateConstraints {
    
    [self.titleLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(@(standardMargin));
        make.leading.equalTo(@(standardMargin));
        make.trailing.equalTo(@(-standardMargin));
        make.centerX.equalTo(self.mas_centerX);
    }];
    
    
    [super updateConstraints];
}

@end