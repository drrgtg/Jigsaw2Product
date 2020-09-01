//
//  FFStyleModel.h
//  XPuzzle
//
//  Created by NENGTIANSHI on 2019/8/19.
//  Copyright © 2019 YINHUI. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface FFStyleModel : NSObject

@property (nonatomic, assign) NSInteger imageCount;
@property (nonatomic, strong) NSArray <NSArray *> *rectArray;

+ (FFStyleModel *)modelWithImageCount:(NSInteger)count;

@end
