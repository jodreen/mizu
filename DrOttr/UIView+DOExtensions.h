//
//  UIView+DOExtensions.h
//  
//
//  Created by Jordeen Chang on 4/8/15.
//
//

#import <UIKit/UIKit.h>

@interface UIView (DOExtensions)

- (instancetype) do_addToSuperview:(UIView *)view;

// plus means class method vs minus is instance method
+ (NSNumber *) do_stylePadding;

@end
