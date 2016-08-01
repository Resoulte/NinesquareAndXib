//
//  SFShopView.m
//  NinesquareAndXib
//
//  Created by ma c on 16/7/31.
//  Copyright © 2016年 shifei. All rights reserved.
//

#import "SFShopView.h"

@interface SFShopView ()
@property (weak, nonatomic) IBOutlet UIImageView *iconImageView;
@property (weak, nonatomic) IBOutlet UILabel *titleLable;

/**
 * hud
 */
@property (strong, nonatomic) UILabel *hudLable;



@end

@implementation SFShopView
// 弹出指示器
- (IBAction)popHud:(id)sender {

    UILabel *hudLable = [[UILabel alloc] initWithFrame:CGRectMake(self.window.center.x, self.window.center.y, 100, 50)];
    self.hudLable = hudLable;
    hudLable.text = @"已下载";
    hudLable.backgroundColor = [UIColor grayColor];
    hudLable.textAlignment = NSTextAlignmentCenter;
    [self.window addSubview:hudLable];
    
    [UIView animateWithDuration:2.0 animations:^{
        
        self.hudLable.alpha = 0;
        
    }];
    
}

+ (instancetype)loadWithShopView {
    
    SFShopView *shopView = [[[NSBundle mainBundle] loadNibNamed:@"SFShopView" owner:nil options:nil] lastObject];
    
    return shopView;
}

- (void)setShop:(SFShop *)shop {
    
    _shop = shop;
    self.iconImageView.image = [UIImage imageNamed:shop.icon];
    self.titleLable.text = shop.name;
}

@end
