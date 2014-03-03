//
//  DPBlurView.h
//  DPBlurView
//
//  Created by Kostas on 3/3/14.
//  Copyright (c) 2014 Kostas Antonopoulos. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DPBlurView : UIView

+(void)blurView:(UIView*)view;
+(void)removeTopBlurViewFromView:(UIView*)view;
+(void)removeAllBlurViewsFromView:(UIView*)view;
@end
