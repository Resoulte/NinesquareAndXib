//
//  SFShop.m
//  NinesquareAndXib
//
//  Created by ma c on 16/7/31.
//  Copyright © 2016年 shifei. All rights reserved.
//

#import "SFShop.h"

@implementation SFShop

+ (NSArray *)loadData {

    NSString *path = [[NSBundle mainBundle] pathForResource:@"app.plist" ofType:nil];
    NSArray *dicArray = [NSArray arrayWithContentsOfFile:path];
    
    NSMutableArray *shopArray = [NSMutableArray array];
    for (NSDictionary *dict in dicArray) {
        SFShop *shop = [[self alloc] init];
        [shop setValuesForKeysWithDictionary:dict];
        [shopArray addObject:shop];
    }
    
    return shopArray;
}
@end
