//
//  UIView+Extention.m
//  HaveCarBao
//
//  Created by 先生汪 on 2017/6/13.
//  Copyright © 2017年 先生汪. All rights reserved.
//

#import "UIView+Extention.h"

@implementation UIView(Extention)

-(CGFloat)ttx{
    return self.transform.tx;
}

-(void)setTtx:(CGFloat)ttx{
    CGAffineTransform  transform=self.transform;
    transform.tx=ttx;
    self.transform=transform;
}

-(CGFloat)tty{
    return self.transform.ty;
}

-(void)setTty:(CGFloat)tty{
    CGAffineTransform  transform=self.transform;
    transform.ty=tty;
    self.transform=transform;
}

///////////////////////////////////////////////////////////////////////////////////////////////////
- (CGFloat)left {
    return self.frame.origin.x;
}


///////////////////////////////////////////////////////////////////////////////////////////////////
- (void)setLeft:(CGFloat)x {
    CGRect frame = self.frame;
    frame.origin.x = x;
    self.frame = frame;
}


///////////////////////////////////////////////////////////////////////////////////////////////////
- (CGFloat)top {
    return self.frame.origin.y;
}


///////////////////////////////////////////////////////////////////////////////////////////////////
- (void)setTop:(CGFloat)y {
    CGRect frame = self.frame;
    frame.origin.y = y;
    self.frame = frame;
}


///////////////////////////////////////////////////////////////////////////////////////////////////
- (CGFloat)right {
    return self.frame.origin.x + self.frame.size.width;
}


///////////////////////////////////////////////////////////////////////////////////////////////////
- (void)setRight:(CGFloat)right {
    CGRect frame = self.frame;
    frame.origin.x = right - frame.size.width;
    self.frame = frame;
}


///////////////////////////////////////////////////////////////////////////////////////////////////
- (CGFloat)bottom {
    return self.frame.origin.y + self.frame.size.height;
}


///////////////////////////////////////////////////////////////////////////////////////////////////
- (void)setBottom:(CGFloat)bottom {
    CGRect frame = self.frame;
    frame.origin.y = bottom - frame.size.height;
    self.frame = frame;
}


///////////////////////////////////////////////////////////////////////////////////////////////////
- (CGFloat)centerX {
    return self.center.x;
}


///////////////////////////////////////////////////////////////////////////////////////////////////
- (void)setCenterX:(CGFloat)centerX {
    self.center = CGPointMake(centerX, self.center.y);
}


///////////////////////////////////////////////////////////////////////////////////////////////////
- (CGFloat)centerY {
    return self.center.y;
}


///////////////////////////////////////////////////////////////////////////////////////////////////
- (void)setCenterY:(CGFloat)centerY {
    self.center = CGPointMake(self.center.x, centerY);
}


///////////////////////////////////////////////////////////////////////////////////////////////////
- (CGFloat)width {
    return self.frame.size.width;
}


///////////////////////////////////////////////////////////////////////////////////////////////////
- (void)setWidth:(CGFloat)width {
    CGRect frame = self.frame;
    frame.size.width = width;
    self.frame = frame;
}


///////////////////////////////////////////////////////////////////////////////////////////////////
- (CGFloat)height {
    return self.frame.size.height;
}


///////////////////////////////////////////////////////////////////////////////////////////////////
- (void)setHeight:(CGFloat)height {
    CGRect frame = self.frame;
    frame.size.height = height;
    self.frame = frame;
}
///////////////////////////////////////////////////////////////////////////////////////////////////
- (CGPoint)origin {
    return self.frame.origin;
}


///////////////////////////////////////////////////////////////////////////////////////////////////
- (void)setOrigin:(CGPoint)origin {
    CGRect frame = self.frame;
    frame.origin = origin;
    self.frame = frame;
}


///////////////////////////////////////////////////////////////////////////////////////////////////
- (CGSize)size {
    return self.frame.size;
}


///////////////////////////////////////////////////////////////////////////////////////////////////
- (void)setSize:(CGSize)size {
    CGRect frame = self.frame;
    frame.size = size;
    self.frame = frame;
}

///////////////////////////////////////////////////////////////////////////////////////////////////
- (void)removeAllSubviews {
    while (self.subviews.count) {
        UIView* child = self.subviews.lastObject;
        if ([child isKindOfClass:[UIImageView class]]) {
            ((UIImageView*)child).image = nil;
        }
        [child removeFromSuperview];
        child = nil;
    }
}

-(void)cornerRadius:(CGFloat)corner{
    self.layer.masksToBounds = YES;
    self.layer.cornerRadius = corner;
}

-(void)cornerRadius:(CGFloat)corner boardColor:(UIColor*)color boardWidth:(CGFloat)boardWidth{
    [self cornerRadius:corner];
    self.layer.borderColor = color.CGColor;
    self.layer.borderWidth = boardWidth;
}

-(BOOL)isLoading{
    if ([[self viewWithTag:-1109]isKindOfClass:[UIActivityIndicatorView class]]) {
        return YES;
    }
    return NO;
}

-(void)startLoading{
    UIActivityIndicatorView* indicator = [[UIActivityIndicatorView alloc]initWithActivityIndicatorStyle:UIActivityIndicatorViewStyleGray];
    indicator.color = COLOR_THEME;
    indicator.tag = -1109;
    indicator.center = CGPointMake(self.centerX-self.left, self.centerY-self.top);
    [self addSubview:indicator];
    [indicator startAnimating];
    
}

-(void)stopLoading{
    [[self viewWithTag:-1109]removeFromSuperview];
}

- (void)reboundEffectAnimationDuration:(CGFloat)duration
{   //缩放的动画 效果
    CAKeyframeAnimation* animation = [CAKeyframeAnimation animationWithKeyPath:@"transform"];
    animation.duration=duration;
    animation.values = [NSArray arrayWithObjects:
                        [NSValue valueWithCATransform3D:CATransform3DMakeScale(0.5, 0.5, 1.0)],
                        [NSValue valueWithCATransform3D:CATransform3DMakeScale(1.2, 1.2, 1.0)],
                        [NSValue valueWithCATransform3D:CATransform3DMakeScale(0.9, 0.9, 1.0)],
                        [NSValue valueWithCATransform3D:CATransform3DMakeScale(1.0, 1.0, 1.0)],
                        nil];//x y z 放大缩小的倍数
    [self.layer addAnimation:animation forKey:nil];
    
}

@end
