//
//  UIImage+Additions.m
//  iTripLog
//
//  Created by FFine on 2018/8/23.
//  Copyright © 2018年 eSocial LLC. All rights reserved.
//

#import "UIImage+Additions.h"

@implementation UIImage (Additions)
- (UIImage *) imageWithTintColor:(UIColor *)tintColor{
    UIGraphicsBeginImageContextWithOptions(self.size, NO, 0.0f);
    [tintColor setFill];
    CGRect bounds = CGRectMake(0, 0, self.size.width, self.size.height);
    UIRectFill(bounds);
    [self drawInRect:bounds blendMode:kCGBlendModeDestinationIn alpha:1.0f];
    UIImage *tintedImage = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    return tintedImage;
}

- (UIImage *) imageWithHeadImg:(UIImage *)headImg{
    UIGraphicsBeginImageContextWithOptions(self.size, NO, 0.0f);
    CGRect bounds = CGRectMake(0, 0, self.size.width, self.size.height);
    [self drawInRect:bounds];
    CGRect headbounds = CGRectMake(16, 16, headImg.size.width, headImg.size.height);
    [headImg drawInRect:headbounds];
    UIImage *target = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    return target;
}

- (UIImage *)circleImage{
    
    
    UIGraphicsBeginImageContextWithOptions(self.size, NO, UIScreen.mainScreen.scale);
    CGContextRef ctx = UIGraphicsGetCurrentContext();
    
    CGRect rect = CGRectMake(0, 0, self.size.width, self.size.height);
    CGContextAddEllipseInRect(ctx, rect);
    
    CGContextClip(ctx);
    
    [self drawInRect:rect];
    UIImage *img = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    
    return img;
    
}
@end
