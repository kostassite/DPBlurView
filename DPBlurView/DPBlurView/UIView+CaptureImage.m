//
//  UIView+CaptureImage.m
//
//  Created by Kostas on 20/11/13.
//  Copyright (c) 2013 Kostas Antonopoulos. All rights reserved.
//

#import "UIView+CaptureImage.h"

@implementation UIView (CaptureImage)

+(UIImage*)imageFromView:(UIView*)view{
    UIGraphicsBeginImageContext(view.bounds.size);
    [view.layer renderInContext:UIGraphicsGetCurrentContext()];
    
    UIImage * img = UIGraphicsGetImageFromCurrentImageContext();
    
    UIGraphicsEndImageContext();
    
    return img;
}

@end
