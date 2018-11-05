//
//  UIView+Extention.h
//  HaveCarBao
//
//  Created by 先生汪 on 2017/6/13.
//  Copyright © 2017年 先生汪. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView(Extention)

@property(nonatomic,assign)CGFloat ttx;
@property(nonatomic,assign)CGFloat tty;
/**
 * Shortcut for frame.origin.x.
 *
 * Sets frame.origin.x = left
 */
@property (nonatomic) CGFloat left;

/**
 * Shortcut for frame.origin.y
 *
 * Sets frame.origin.y = top
 */
@property (nonatomic) CGFloat top;

/**
 * Shortcut for frame.origin.x + frame.size.width
 *
 * Sets frame.origin.x = right - frame.size.width
 */
@property (nonatomic) CGFloat right;

/**
 * Shortcut for frame.origin.y + frame.size.height
 *
 * Sets frame.origin.y = bottom - frame.size.height
 */
@property (nonatomic) CGFloat bottom;

/**
 * Shortcut for frame.size.width
 *
 * Sets frame.size.width = width
 */
@property (nonatomic) CGFloat width;

/**
 * Shortcut for frame.size.height
 *
 * Sets frame.size.height = height
 */
@property (nonatomic) CGFloat height;

/**
 * Shortcut for center.x
 *
 * Sets center.x = centerX
 */
@property (nonatomic) CGFloat centerX;

/**
 * Shortcut for center.y
 *
 * Sets center.y = centerY
 */
@property (nonatomic) CGFloat centerY;
/**
 * Shortcut for frame.origin
 */
@property (nonatomic) CGPoint origin;

/**
 * Shortcut for frame.size
 */
@property (nonatomic) CGSize size;

/**
 * Removes all subviews.
 */
- (void)removeAllSubviews;

-(void)cornerRadius:(CGFloat)corner;

-(void)cornerRadius:(CGFloat)corner boardColor:(UIColor*)color boardWidth:(CGFloat)boardWidth;

-(BOOL)isLoading;
-(void)startLoading;
-(void)stopLoading;

- (void)reboundEffectAnimationDuration:(CGFloat)duration;

@end
