//
//  SCNoDataView.h
//  UIFrameworkDemo
//
//  Created by 黄永军 on 2018/11/5.
//  Copyright © 2018 Seacity. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

typedef void (^SCNoDataActionBlock)(void);

@interface SCNoDataView : UIView

@property (nonatomic ,copy) SCNoDataActionBlock noDataActionBlock;

@end

NS_ASSUME_NONNULL_END
