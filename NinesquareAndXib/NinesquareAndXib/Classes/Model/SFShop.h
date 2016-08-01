//
//  SFShop.h
//  NinesquareAndXib
//
//  Created by ma c on 16/7/31.
//  Copyright © 2016年 shifei. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface SFShop : NSObject
/**
 *  图片
 */
@property (copy, nonatomic) NSString *icon;
/**
 *  名字
 */
@property (copy, nonatomic) NSString *name;

+ (NSArray *)loadData;
@end
