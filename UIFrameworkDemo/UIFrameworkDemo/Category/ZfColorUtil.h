//
//  ZfColorUtil.h
//  GeeluExchange
//
//  Created by 先生汪 on 17/3/9.
//  Copyright © 2017年 先生汪. All rights reserved.
//

#ifndef GLCOLORUTIL_H
#define GLCOLORUTIL_H

#import <UIKit/UIKit.h>

@interface ZfColorUtil : NSObject

/**
 * @brief   颜色转换 IOS中十六进制的颜色转换为UIColor
 * @param   16进制字符串
 * @return  UIColor对象。
 */

+ (UIColor *) uiColorFromString: (NSString *)color;

+ (UIColor *) uiColorWithR:(int) rc G:(int) gc B:(int) bc;

+ (UIImage*) createImageWithColor:(UIColor*) color;

@end

#endif
