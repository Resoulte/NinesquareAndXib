//
//  SFShopView.h
//  NinesquareAndXib
//
//  Created by ma c on 16/7/31.
//  Copyright © 2016年 shifei. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "SFShop.h"

@interface SFShopView : UIView
/**
 *  shop模型
 */
@property (strong, nonatomic) SFShop *shop;
/**
 *  加载xib
 */
+ (instancetype)loadWithShopView;
@end
