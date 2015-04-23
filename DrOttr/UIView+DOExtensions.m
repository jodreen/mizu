//
//  UIView+DOExtensions.m
//  
//
//  Created by Jordeen Chang on 4/8/15.
//
//

#import "UIView+DOExtensions.h"

@implementation UIView (DOExtensions)

- (instancetype)do_addToSuperview:(UIView *)view {
    // Add some check to make sure view is not nil
    [view addSubview:self];
    return self;
}

+ (NSNumber *)do_stylePadding {
    return @10;
}

+ (UIColor *)mizuBlue {
    return [UIColor colorWithRed:(160/255.0) green:(97/255.0) blue:(5/255.0) alpha:1] ;
}

@end
