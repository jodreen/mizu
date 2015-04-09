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


@end
