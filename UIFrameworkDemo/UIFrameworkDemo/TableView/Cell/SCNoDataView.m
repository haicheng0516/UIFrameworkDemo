//
//  SCNoDataView.m
//  UIFrameworkDemo
//
//  Created by 黄永军 on 2018/11/5.
//  Copyright © 2018 Seacity. All rights reserved.
//

#import "SCNoDataView.h"

@implementation SCNoDataView


-(instancetype) initWithFrame:(CGRect)frame{
    
    self = [super initWithFrame:frame];
    if (self) {
        
        UIImageView *nilDataImage = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@""]];
        nilDataImage.frame = CGRectMake(FULL_SCREEN_WIDTH/3, 80, FULL_SCREEN_WIDTH/3, FULL_SCREEN_HEIGHT/8);
    
        UILabel *nilDataLabel = [[UILabel alloc] initWithFrame:CGRectMake(FULL_SCREEN_WIDTH/3+5, 80+FULL_SCREEN_HEIGHT/8, FULL_SCREEN_WIDTH/2, 40)];
        nilDataLabel.text = @"很抱歉,暂无结果";
        nilDataLabel.font = [UIFont systemFontOfSize:15];

        self.hidden = NO;
        [self addSubview:nilDataImage];
        [self addSubview:nilDataLabel];
    }
    return self;
}


- (void)buttonAction {
    if (self.noDataActionBlock) {
        self.noDataActionBlock();
    }
}


@end
