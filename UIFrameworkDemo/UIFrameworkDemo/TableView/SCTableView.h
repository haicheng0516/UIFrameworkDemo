//
//  SCTableView.h
//  UIFrameworkDemo
//
//  Created by 黄永军 on 2018/11/5.
//  Copyright © 2018 Seacity. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@protocol SCTableViewDelegate <NSObject>
@optional
-(void)didSelectTableRow:(NSIndexPath *)indexPath;
-(void)didNoDataAction;
-(void)pullRefreshData; //下拉刷新
-(void)pullLoadMoreData; //上拉加载更多
-(CGFloat)heightForRowAtIndexPath:(NSIndexPath *)indexPath;

@end

@interface SCTableView : UITableView

@property (nonatomic ,strong) id<SCTableViewDelegate> tableDelegate;

@property (nonatomic ,strong) NSMutableArray *dataArray;    //数据源

@property (nonatomic ,assign) CGFloat cellHeight;   //cell高度

@property (nonatomic ,assign) BOOL hasNoDataView; //无数据时 是否显示视图



//下拉上拉
-(void) addHeaderRefresh;
-(void) addFooterLoadMore;
-(void) endHeaderRefresh;
-(void) endFooterLoadMore;
-(void) endRefreshingWithNoMoreData;
-(void) resetNoMoreData;

@end

NS_ASSUME_NONNULL_END
