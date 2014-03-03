//
//  DPBlurView.m
//  DPBlurView
//
//  Created by Kostas on 3/3/14.
//  Copyright (c) 2014 Kostas Antonopoulos. All rights reserved.
//

#import "DPBlurView.h"
#import "UIView+CaptureImage.h"
#import "UIImage+StackBlur.h"

@implementation DPBlurView

+(void)blurView:(UIView*)view{
    DPBlurView *blurView = [[DPBlurView alloc]init];
    [blurView setFrame:view.bounds];
    UIImage *capturedViewImg = [UIView imageFromView:view];
    UIImage *blurred = [[capturedViewImg normalize]stackBlur:3];
    UIImageView *blurredImageView = [[UIImageView alloc]initWithImage:blurred];
    [blurredImageView setFrame:view.bounds];
    [blurView addSubview:blurredImageView];
    [view.superview addSubview:blurView];
}

+(void)removeTopBlurViewFromView:(UIView*)view{
    for (UIView * v in view.subviews.reverseObjectEnumerator) {
        if ([v isKindOfClass:[DPBlurView class]]) {
            [v removeFromSuperview];
            break;
        }
    }
}

+(void)removeAllBlurViewsFromView:(UIView*)view{
    for (UIView * v in view.subviews) {
        if ([v isKindOfClass:[DPBlurView class]]) {
            [v removeFromSuperview];
        }
    }
}

@end
