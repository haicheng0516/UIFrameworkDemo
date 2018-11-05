//
//  Constant.h
//  UIFrameworkDemo
//
//  Created by 黄永军 on 2018/11/5.
//  Copyright © 2018 Seacity. All rights reserved.
//

#ifndef Constant_h
#define Constant_h



#define FULL_SCREEN_WIDTH  ([[UIScreen mainScreen] bounds].size.width)
#define FULL_SCREEN_HEIGHT  ([[UIScreen mainScreen] bounds].size.height)

// 适配 IS_IPHONE_X
#define is_iPhoneX ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(1125, 2436), [[UIScreen mainScreen] currentMode].size) : NO)

#define SafeAreaTopHeight (kScreenHeight == 812.0 ? 88 : 64) // 在 iPhoneX 上的时候

#define SafeAreaBottomHeight (kScreenHeight == 812.0 ? 34 + 49 : 49)

//#define NoSafeAreaBottomHeight (kScreenHeight == 812.0 ? 49  : 34)

#define Height_NavContentBar 44.0f

#define Height_StatusBar (is_iPhoneX ? 44.f : 20.f)

#define Height_NavBar (is_iPhoneX ? 88.f : 64.f)

#define Height_TabBar (is_iPhoneX ? 83.f : 49.f)

#define TAB_BAR_HEIGHT          49.0f


#define WeakSelf __weak typeof(self) weakSelf = self;

#define ColorFromString(str) [ZfColorUtil uiColorFromString:str]
//整体风格颜色（蓝色）
#define COLOR_THEME                     ColorFromString(@"#3baefc")

#endif /* Constant_h */
