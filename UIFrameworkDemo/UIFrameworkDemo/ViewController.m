//
//  ViewController.m
//  UIFrameworkDemo
//
//  Created by 黄永军 on 2018/11/5.
//  Copyright © 2018 Seacity. All rights reserved.
//

#import "ViewController.h"

#import "SCTableView.h"

@interface ViewController ()<SCTableViewDelegate>

@property (nonatomic ,strong) SCTableView *scTableView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.view.backgroundColor = [UIColor grayColor];
    [self.view addSubview:self.scTableView];
}


#pragma mark -- cell的点击事件
-(void)didSelectTableRow:(NSIndexPath *)indexPath{
    
}


#pragma mark -- 懒加载
-(SCTableView *)scTableView{
    if (!_scTableView) {
        _scTableView = [[SCTableView alloc] initWithFrame:CGRectMake(0, -Height_StatusBar, FULL_SCREEN_WIDTH, FULL_SCREEN_HEIGHT)];
        _scTableView.cellHeight = 230;
        
//        [_scTableView registerClass:<#(nullable Class)#> forCellReuseIdentifier:<#(nonnull NSString *)#>]
        _scTableView.tableDelegate = self;
        [_scTableView addHeaderRefresh];
        [_scTableView addFooterLoadMore];
    }
    return _scTableView;
}

-(void) pullRefreshData{
    
    [_scTableView resetNoMoreData];
//    网络请求
}

-(void) pullLoadMoreData{
    
    
    //网络请求
}


@end
