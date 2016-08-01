//
//  ViewController.m
//  NinesquareAndXib
//
//  Created by ma c on 16/7/31.
//  Copyright © 2016年 shifei. All rights reserved.
//

#import "ViewController.h"
#import "SFShop.h"
#import "SFShopView.h"


@interface ViewController ()
@property (strong, nonatomic) NSArray *shopList;

@end

@implementation ViewController
- (NSArray *)shopList {

    if (!_shopList) {
        _shopList = [SFShop loadData];
    }
    return _shopList;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // 布置九宫格
    [self setupSubViews];
    
}

// 布置九宫格
- (void)setupSubViews {
    
    NSInteger cols = 3;
    CGFloat x = 0;
    CGFloat y = 0;
    CGFloat viewW = 100;
    CGFloat viewH = 100;
    CGFloat margainX = (SF_SCREEN_WIDTH - cols * viewW) / (cols + 1);
    CGFloat margainY = 15;
    
    for (NSInteger i = 0; i < self.shopList.count; i ++) {
        
        NSInteger col = i % cols;
        NSInteger row = i / cols;
        x = margainX + (margainX + viewW) *col;
        y = row * (viewH + margainY) + 30;
        
        SFShopView *shopView = [SFShopView loadWithShopView];
        shopView.frame = CGRectMake(x, y, viewW, viewH);
        
        // 取出模型数据
        shopView.shop = self.shopList[i];

        [self.view addSubview:shopView];
        
    }
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
