//
//  FFStyleModel.m
//  XPuzzle
//
//  Created by NENGTIANSHI on 2019/8/19.
//  Copyright © 2019 YINHUI. All rights reserved.
//

#import "FFStyleModel.h"
#import <CoreGraphics/CoreGraphics.h>

@implementation FFStyleModel

+ (FFStyleModel *)modelWithImageCount:(NSInteger)count {
    FFStyleModel *model = [[FFStyleModel alloc] init];
    
    model.imageCount = count;
    switch (count) {
        case 1:
        {
            NSArray <NSDictionary *> *rectMessage1 = @[[FFStyleModel dicWithRect:CGRectMake(50, 50, 400, 400)]];
            NSArray <NSDictionary *> *rectMessage2 = @[[FFStyleModel dicWithRect:CGRectMake(25, 50, 400, 400)]];
            NSArray <NSDictionary *> *rectMessage3 = @[[FFStyleModel dicWithRect:CGRectMake(75, 50, 400, 400)]];
            NSArray <NSDictionary *> *rectMessage4 = @[[FFStyleModel dicWithRect:CGRectMake(25, 25, 400, 400)]];
            NSArray <NSDictionary *> *rectMessage5 = @[[FFStyleModel dicWithRect:CGRectMake(25, 75, 400, 400)]];
            NSArray <NSDictionary *> *rectMessage6 = @[[FFStyleModel dicWithRect:CGRectMake(75, 25, 400, 400)]];
            NSArray <NSDictionary *> *rectMessage7 = @[[FFStyleModel dicWithRect:CGRectMake(75, 75, 400, 400)]];
            model.rectArray = @[rectMessage1, rectMessage2, rectMessage3, rectMessage4, rectMessage5, rectMessage6, rectMessage7];
        }
            break;
        case 2:
        {
            NSArray <NSDictionary *> *rectMessage1 = @[[FFStyleModel dicWithRect:CGRectMake(15, 25, 230, 450)],
                                                       [FFStyleModel dicWithRect:CGRectMake(255, 25, 230, 450)]];
            NSArray <NSDictionary *> *rectMessage2 = @[[FFStyleModel dicWithRect:CGRectMake(25, 15, 450, 230)],
                                                       [FFStyleModel dicWithRect:CGRectMake(25, 255, 450, 230)]];
            NSArray <NSDictionary *> *rectMessage3 = @[[FFStyleModel dicWithRect:CGRectMake(15, 25, 150, 450)],
                                                       [FFStyleModel dicWithRect:CGRectMake(185, 25, 300, 450)]];
            NSArray <NSDictionary *> *rectMessage4 = @[[FFStyleModel dicWithRect:CGRectMake(15, 138, 230, 230)],
                                                       [FFStyleModel dicWithRect:CGRectMake(255, 138, 230, 230)]];
            NSArray <NSDictionary *> *rectMessage5 = @[[FFStyleModel dicWithRect:CGRectMake(20, 20, 230, 230)],
                                                       [FFStyleModel dicWithRect:CGRectMake(250, 250, 230, 230)]];
            NSArray <NSDictionary *> *rectMessage6 = @[[FFStyleModel dicWithRect:CGRectMake(135, 15, 230, 230)],
                                                       [FFStyleModel dicWithRect:CGRectMake(135, 255, 230, 230)]];
            NSArray <NSDictionary *> *rectMessage7 = @[[FFStyleModel dicWithRect:CGRectMake(115, 115, 350, 350)],
                                                       [FFStyleModel dicWithRect:CGRectMake(35, 35, 230, 230)]];
            NSArray <NSDictionary *> *rectMessage8 = @[[FFStyleModel dicWithRect:CGRectMake(15, 15, 230, 350)],
                                                       [FFStyleModel dicWithRect:CGRectMake(255, 15, 230, 350)]];
            NSArray <NSDictionary *> *rectMessage9 = @[[FFStyleModel dicWithRect:CGRectMake(15, 75, 230, 350)],
                                                       [FFStyleModel dicWithRect:CGRectMake(255, 75, 230, 350)]];
            NSArray <NSDictionary *> *rectMessage10 = @[[FFStyleModel dicWithRect:CGRectMake(15, 35, 230, 350)],
                                                        [FFStyleModel dicWithRect:CGRectMake(255, 115, 230, 350)]];
            model.rectArray = @[rectMessage1, rectMessage2, rectMessage3, rectMessage4, rectMessage5, rectMessage6, rectMessage7, rectMessage8, rectMessage9, rectMessage10];
        }
            break;
        case 3:
        {
            NSArray <NSDictionary *> *rectMessage1 = @[[FFStyleModel dicWithRect:CGRectMake(15, 10, 230, 230)],
                                                       [FFStyleModel dicWithRect:CGRectMake(255, 10, 230, 230)],
                                                       [FFStyleModel dicWithRect:CGRectMake(15, 250, 470, 240)]];
            NSArray <NSDictionary *> *rectMessage2 = @[[FFStyleModel dicWithRect:CGRectMake(10, 15, 240, 470)],
                                                       [FFStyleModel dicWithRect:CGRectMake(260, 15, 230, 230)],
                                                       [FFStyleModel dicWithRect:CGRectMake(260, 255, 230, 230)]];
            NSArray <NSDictionary *> *rectMessage3 = @[[FFStyleModel dicWithRect:CGRectMake(10, 15, 150, 470)],
                                                       [FFStyleModel dicWithRect:CGRectMake(175, 15, 150, 470)],
                                                       [FFStyleModel dicWithRect:CGRectMake(340, 15, 150, 470)]];
            NSArray <NSDictionary *> *rectMessage4 = @[[FFStyleModel dicWithRect:CGRectMake(10, 135, 150, 350)],
                                                       [FFStyleModel dicWithRect:CGRectMake(175, 15, 150, 350)],
                                                       [FFStyleModel dicWithRect:CGRectMake(340, 135, 150, 350)]];
            NSArray <NSDictionary *> *rectMessage5 = @[[FFStyleModel dicWithRect:CGRectMake(15, 10, 350, 150)],
                                                       [FFStyleModel dicWithRect:CGRectMake(135, 175, 350, 150)],
                                                       [FFStyleModel dicWithRect:CGRectMake(15, 340, 350, 150)]];
            NSArray <NSDictionary *> *rectMessage6 = @[[FFStyleModel dicWithRect:CGRectMake(175, 10, 150, 150)],
                                                       [FFStyleModel dicWithRect:CGRectMake(175, 175, 150, 150)],
                                                       [FFStyleModel dicWithRect:CGRectMake(175, 340, 150, 150)]];
            NSArray <NSDictionary *> *rectMessage7 = @[[FFStyleModel dicWithRect:CGRectMake(10, 175, 150, 150)],
                                                       [FFStyleModel dicWithRect:CGRectMake(175, 175, 150, 150)],
                                                       [FFStyleModel dicWithRect:CGRectMake(340, 175, 150, 150)]];
            NSArray <NSDictionary *> *rectMessage8 = @[[FFStyleModel dicWithRect:CGRectMake(10, 15, 150, 150)],
                                                       [FFStyleModel dicWithRect:CGRectMake(175, 175, 150, 150)],
                                                       [FFStyleModel dicWithRect:CGRectMake(340, 335, 150, 150)]];
            NSArray <NSDictionary *> *rectMessage9 = @[[FFStyleModel dicWithRect:CGRectMake(10, 15, 320, 150)],
                                                       [FFStyleModel dicWithRect:CGRectMake(25, 185, 300, 300)],
                                                       [FFStyleModel dicWithRect:CGRectMake(340, 15, 150, 470)]];
            NSArray <NSDictionary *> *rectMessage10 = @[[FFStyleModel dicWithRect:CGRectMake(10, 15, 150, 470)],
                                                        [FFStyleModel dicWithRect:CGRectMake(175, 15, 300, 300)],
                                                        [FFStyleModel dicWithRect:CGRectMake(170, 335, 320, 150)]];
            model.rectArray = @[rectMessage1, rectMessage2, rectMessage3, rectMessage4, rectMessage5, rectMessage6, rectMessage7, rectMessage8, rectMessage9, rectMessage10];
        }
            break;
        case 4:
        {
            NSArray <NSDictionary *> *rectMessage1 = @[[FFStyleModel dicWithRect:CGRectMake(15, 15, 230, 230)],
                                                      [FFStyleModel dicWithRect:CGRectMake(255, 15, 230, 230)],
                                                      [FFStyleModel dicWithRect:CGRectMake(15, 255, 230, 230)],
                                                      [FFStyleModel dicWithRect:CGRectMake(255, 255, 230, 230)]];
            NSArray <NSDictionary *> *rectMessage2 = @[[FFStyleModel dicWithRect:CGRectMake(15, 15, 150, 150)],
                                                       [FFStyleModel dicWithRect:CGRectMake(175, 15, 150, 150)],
                                                       [FFStyleModel dicWithRect:CGRectMake(335, 15, 150, 150)],
                                                       [FFStyleModel dicWithRect:CGRectMake(15, 180, 470, 305)]];
            NSArray <NSDictionary *> *rectMessage3 = @[[FFStyleModel dicWithRect:CGRectMake(15, 15, 470, 305)],
                                                       [FFStyleModel dicWithRect:CGRectMake(15, 335, 150, 150)],
                                                       [FFStyleModel dicWithRect:CGRectMake(175, 335, 150, 150)],
                                                       [FFStyleModel dicWithRect:CGRectMake(335, 335, 150, 150)]];
            NSArray <NSDictionary *> *rectMessage4 = @[[FFStyleModel dicWithRect:CGRectMake(15, 15, 305, 470)],
                                                       [FFStyleModel dicWithRect:CGRectMake(335, 15, 150, 150)],
                                                       [FFStyleModel dicWithRect:CGRectMake(335, 175, 150, 150)],
                                                       [FFStyleModel dicWithRect:CGRectMake(335, 335, 150, 150)]];
            NSArray <NSDictionary *> *rectMessage5 = @[[FFStyleModel dicWithRect:CGRectMake(10, 15, 150, 470)],
                                                       [FFStyleModel dicWithRect:CGRectMake(175, 15, 150, 250)],
                                                       [FFStyleModel dicWithRect:CGRectMake(340, 15, 150, 250)],
                                                       [FFStyleModel dicWithRect:CGRectMake(175, 275, 315, 210)]];
            NSArray <NSDictionary *> *rectMessage6 = @[[FFStyleModel dicWithRect:CGRectMake(55, 15, 150, 230)],
                                                       [FFStyleModel dicWithRect:CGRectMake(215, 95, 230, 150)],
                                                       [FFStyleModel dicWithRect:CGRectMake(55, 255, 230, 150)],
                                                       [FFStyleModel dicWithRect:CGRectMake(295, 255, 150, 230)]];
            NSArray <NSDictionary *> *rectMessage7 = @[[FFStyleModel dicWithRect:CGRectMake(20, 15, 150, 300)],
                                                       [FFStyleModel dicWithRect:CGRectMake(185, 15, 300, 150)],
                                                       [FFStyleModel dicWithRect:CGRectMake(20, 335, 300, 150)],
                                                       [FFStyleModel dicWithRect:CGRectMake(335, 185, 150, 300)]];
            NSArray <NSDictionary *> *rectMessage8 = @[[FFStyleModel dicWithRect:CGRectMake(20, 20, 230, 230)],
                                                       [FFStyleModel dicWithRect:CGRectMake(265, 60, 175, 175)],
                                                       [FFStyleModel dicWithRect:CGRectMake(60, 265, 175, 175)],
                                                       [FFStyleModel dicWithRect:CGRectMake(250, 250, 230, 230)]];
            NSArray <NSDictionary *> *rectMessage9 = @[[FFStyleModel dicWithRect:CGRectMake(5, 15, 115, 470)],
                                                       [FFStyleModel dicWithRect:CGRectMake(130, 15, 115, 470)],
                                                       [FFStyleModel dicWithRect:CGRectMake(255, 15, 115, 470)],
                                                       [FFStyleModel dicWithRect:CGRectMake(380, 15, 115, 470)]];
            NSArray <NSDictionary *> *rectMessage10 = @[[FFStyleModel dicWithRect:CGRectMake(15, 5, 470, 115)],
                                                       [FFStyleModel dicWithRect:CGRectMake(15, 130, 470, 115)],
                                                       [FFStyleModel dicWithRect:CGRectMake(15, 255, 470, 115)],
                                                       [FFStyleModel dicWithRect:CGRectMake(15, 380, 470, 115)]];
            model.rectArray = @[rectMessage1, rectMessage2, rectMessage3, rectMessage4, rectMessage5, rectMessage6, rectMessage7, rectMessage8, rectMessage9, rectMessage10];
        }
            break;
        case 5:
        {
            NSArray <NSDictionary *> *rectMessage1 = @[[FFStyleModel dicWithRect:CGRectMake(15, 15, 470, 150)],
                                                       [FFStyleModel dicWithRect:CGRectMake(15, 175, 230, 150)],
                                                       [FFStyleModel dicWithRect:CGRectMake(255, 175, 230, 150)],
                                                       [FFStyleModel dicWithRect:CGRectMake(15, 335, 230, 150)],
                                                       [FFStyleModel dicWithRect:CGRectMake(255, 335, 230, 150)]];
            NSArray <NSDictionary *> *rectMessage2 = @[[FFStyleModel dicWithRect:CGRectMake(15, 15, 230, 150)],
                                                       [FFStyleModel dicWithRect:CGRectMake(255, 15, 230, 150)],
                                                       [FFStyleModel dicWithRect:CGRectMake(15, 175, 230, 150)],
                                                       [FFStyleModel dicWithRect:CGRectMake(255, 175, 230, 150)],
                                                       [FFStyleModel dicWithRect:CGRectMake(15, 335, 470, 150)]];
            NSArray <NSDictionary *> *rectMessage3 = @[[FFStyleModel dicWithRect:CGRectMake(15, 15, 150, 470)],
                                                       [FFStyleModel dicWithRect:CGRectMake(175, 15, 150, 230)],
                                                       [FFStyleModel dicWithRect:CGRectMake(335, 15, 150, 230)],
                                                       [FFStyleModel dicWithRect:CGRectMake(175, 255, 150, 230)],
                                                       [FFStyleModel dicWithRect:CGRectMake(335, 255, 150, 230)]];
            NSArray <NSDictionary *> *rectMessage4 = @[[FFStyleModel dicWithRect:CGRectMake(15, 15, 150, 230)],
                                                       [FFStyleModel dicWithRect:CGRectMake(175, 15, 150, 230)],
                                                       [FFStyleModel dicWithRect:CGRectMake(15, 255, 150, 230)],
                                                       [FFStyleModel dicWithRect:CGRectMake(175, 255, 150, 230)],
                                                       [FFStyleModel dicWithRect:CGRectMake(335, 15, 150, 470)]];
            NSArray <NSDictionary *> *rectMessage5 = @[[FFStyleModel dicWithRect:CGRectMake(15, 15, 150, 150)],
                                                       [FFStyleModel dicWithRect:CGRectMake(175, 15, 150, 150)],
                                                       [FFStyleModel dicWithRect:CGRectMake(15, 180, 305, 305)],
                                                       [FFStyleModel dicWithRect:CGRectMake(335, 15, 150, 230)],
                                                       [FFStyleModel dicWithRect:CGRectMake(335, 255, 150, 230)]];
            NSArray <NSDictionary *> *rectMessage6 = @[[FFStyleModel dicWithRect:CGRectMake(15, 15, 150, 230)],
                                                       [FFStyleModel dicWithRect:CGRectMake(15, 255, 150, 230)],
                                                       [FFStyleModel dicWithRect:CGRectMake(180, 15, 305, 305)],
                                                       [FFStyleModel dicWithRect:CGRectMake(175, 335, 150, 150)],
                                                       [FFStyleModel dicWithRect:CGRectMake(335, 335, 150, 150)]];
            NSArray <NSDictionary *> *rectMessage7 = @[[FFStyleModel dicWithRect:CGRectMake(15, 15, 150, 230)],
                                                       [FFStyleModel dicWithRect:CGRectMake(175, 15, 150, 230)],
                                                       [FFStyleModel dicWithRect:CGRectMake(335, 15, 150, 230)],
                                                       [FFStyleModel dicWithRect:CGRectMake(15, 255, 230, 230)],
                                                       [FFStyleModel dicWithRect:CGRectMake(255, 255, 230, 230)]];
            NSArray <NSDictionary *> *rectMessage8 = @[[FFStyleModel dicWithRect:CGRectMake(15, 15, 230, 230)],
                                                       [FFStyleModel dicWithRect:CGRectMake(15, 255, 230, 230)],
                                                       [FFStyleModel dicWithRect:CGRectMake(255, 15, 230, 150)],
                                                       [FFStyleModel dicWithRect:CGRectMake(255, 175, 230, 150)],
                                                       [FFStyleModel dicWithRect:CGRectMake(255, 335, 230, 150)]];
            NSArray <NSDictionary *> *rectMessage9 = @[[FFStyleModel dicWithRect:CGRectMake(15, 15, 230, 230)],
                                                       [FFStyleModel dicWithRect:CGRectMake(255, 15, 230, 230)],
                                                       [FFStyleModel dicWithRect:CGRectMake(15, 255, 150, 230)],
                                                       [FFStyleModel dicWithRect:CGRectMake(175, 255, 150, 230)],
                                                       [FFStyleModel dicWithRect:CGRectMake(335, 255, 150, 230)]];
            NSArray <NSDictionary *> *rectMessage10 = @[[FFStyleModel dicWithRect:CGRectMake(15, 15, 230, 150)],
                                                        [FFStyleModel dicWithRect:CGRectMake(15, 175, 230, 150)],
                                                        [FFStyleModel dicWithRect:CGRectMake(15, 335, 230, 230)],
                                                        [FFStyleModel dicWithRect:CGRectMake(255, 15, 230, 230)],
                                                        [FFStyleModel dicWithRect:CGRectMake(255, 255, 230, 230)]];
            model.rectArray = @[rectMessage1, rectMessage2, rectMessage3, rectMessage4, rectMessage5, rectMessage6, rectMessage7, rectMessage8, rectMessage9, rectMessage10];
        }
            break;
        case 6:
        {
            NSArray <NSDictionary *> *rectMessage1 = @[[FFStyleModel dicWithRect:CGRectMake(15, 15, 310, 310)],
                                                       [FFStyleModel dicWithRect:CGRectMake(335, 15, 150, 150)],
                                                       [FFStyleModel dicWithRect:CGRectMake(335, 175, 150, 150)],
                                                       [FFStyleModel dicWithRect:CGRectMake(15, 335, 150, 150)],
                                                       [FFStyleModel dicWithRect:CGRectMake(175, 335, 150, 150)],
                                                       [FFStyleModel dicWithRect:CGRectMake(335, 335, 150, 150)]];
            NSArray <NSDictionary *> *rectMessage2 = @[[FFStyleModel dicWithRect:CGRectMake(15, 15, 150, 150)],
                                                       [FFStyleModel dicWithRect:CGRectMake(15, 175, 150, 150)],
                                                       [FFStyleModel dicWithRect:CGRectMake(15, 335, 150, 150)],
                                                       [FFStyleModel dicWithRect:CGRectMake(175, 15, 150, 150)],
                                                       [FFStyleModel dicWithRect:CGRectMake(335, 15, 150, 150)],
                                                       [FFStyleModel dicWithRect:CGRectMake(175, 175, 310, 310)]];
            NSArray <NSDictionary *> *rectMessage3 = @[[FFStyleModel dicWithRect:CGRectMake(15, 15, 150, 230)],
                                                       [FFStyleModel dicWithRect:CGRectMake(15, 255, 150, 230)],
                                                       [FFStyleModel dicWithRect:CGRectMake(175, 15, 150, 230)],
                                                       [FFStyleModel dicWithRect:CGRectMake(175, 255, 150, 230)],
                                                       [FFStyleModel dicWithRect:CGRectMake(335, 15, 150, 230)],
                                                       [FFStyleModel dicWithRect:CGRectMake(335, 255, 150, 230)]];
            NSArray <NSDictionary *> *rectMessage4 = @[[FFStyleModel dicWithRect:CGRectMake(15, 15, 230, 150)],
                                                       [FFStyleModel dicWithRect:CGRectMake(15, 175, 230, 150)],
                                                       [FFStyleModel dicWithRect:CGRectMake(15, 335, 230, 150)],
                                                       [FFStyleModel dicWithRect:CGRectMake(255, 15, 230, 150)],
                                                       [FFStyleModel dicWithRect:CGRectMake(255, 175, 230, 150)],
                                                       [FFStyleModel dicWithRect:CGRectMake(255, 335, 230, 150)]];
            NSArray <NSDictionary *> *rectMessage5 = @[[FFStyleModel dicWithRect:CGRectMake(15, 15, 310, 150)],
                                                       [FFStyleModel dicWithRect:CGRectMake(335, 15, 150, 150)],
                                                       [FFStyleModel dicWithRect:CGRectMake(15, 175, 150, 150)],
                                                       [FFStyleModel dicWithRect:CGRectMake(175, 175, 310, 150)],
                                                       [FFStyleModel dicWithRect:CGRectMake(15, 335, 310, 150)],
                                                       [FFStyleModel dicWithRect:CGRectMake(335, 335, 150, 150)]];
            NSArray <NSDictionary *> *rectMessage6 = @[[FFStyleModel dicWithRect:CGRectMake(15, 15, 150, 310)],
                                                       [FFStyleModel dicWithRect:CGRectMake(15, 335, 150, 150)],
                                                       [FFStyleModel dicWithRect:CGRectMake(175, 15, 150, 150)],
                                                       [FFStyleModel dicWithRect:CGRectMake(175, 175, 150, 310)],
                                                       [FFStyleModel dicWithRect:CGRectMake(335, 15, 150, 310)],
                                                       [FFStyleModel dicWithRect:CGRectMake(335, 335, 150, 150)]];
            NSArray <NSDictionary *> *rectMessage7 = @[[FFStyleModel dicWithRect:CGRectMake(15, 95, 150, 150)],
                                                       [FFStyleModel dicWithRect:CGRectMake(15, 255, 150, 150)],
                                                       [FFStyleModel dicWithRect:CGRectMake(175, 95, 150, 150)],
                                                       [FFStyleModel dicWithRect:CGRectMake(175, 255, 150, 150)],
                                                       [FFStyleModel dicWithRect:CGRectMake(335, 95, 150, 150)],
                                                       [FFStyleModel dicWithRect:CGRectMake(335, 255, 150, 150)]];
            NSArray <NSDictionary *> *rectMessage8 = @[[FFStyleModel dicWithRect:CGRectMake(15, 15, 230, 230)],
                                                       [FFStyleModel dicWithRect:CGRectMake(255, 15, 230, 230)],
                                                       [FFStyleModel dicWithRect:CGRectMake(15, 255, 110, 230)],
                                                       [FFStyleModel dicWithRect:CGRectMake(135, 255, 110, 230)],
                                                       [FFStyleModel dicWithRect:CGRectMake(255, 255, 110, 230)],
                                                       [FFStyleModel dicWithRect:CGRectMake(375, 255, 110, 230)]];
            NSArray <NSDictionary *> *rectMessage9 = @[[FFStyleModel dicWithRect:CGRectMake(15, 15, 230, 110)],
                                                       [FFStyleModel dicWithRect:CGRectMake(15, 135, 230, 110)],
                                                       [FFStyleModel dicWithRect:CGRectMake(15, 255, 230, 110)],
                                                       [FFStyleModel dicWithRect:CGRectMake(15, 375, 230, 110)],
                                                       [FFStyleModel dicWithRect:CGRectMake(255, 15, 230, 230)],
                                                       [FFStyleModel dicWithRect:CGRectMake(255, 255, 230, 230)]];
            NSArray <NSDictionary *> *rectMessage10 = @[[FFStyleModel dicWithRect:CGRectMake(15, 15, 110, 230)],
                                                        [FFStyleModel dicWithRect:CGRectMake(135, 15, 110, 230)],
                                                        [FFStyleModel dicWithRect:CGRectMake(255, 15, 110, 230)],
                                                        [FFStyleModel dicWithRect:CGRectMake(375, 15, 110, 230)],
                                                        [FFStyleModel dicWithRect:CGRectMake(15, 255, 230, 230)],
                                                        [FFStyleModel dicWithRect:CGRectMake(255, 255, 230, 230)]];
            NSArray <NSDictionary *> *rectMessage11 = @[[FFStyleModel dicWithRect:CGRectMake(15, 15, 230, 230)],
                                                        [FFStyleModel dicWithRect:CGRectMake(15, 255, 230, 230)],
                                                        [FFStyleModel dicWithRect:CGRectMake(255, 15, 230, 110)],
                                                        [FFStyleModel dicWithRect:CGRectMake(255, 135, 230, 110)],
                                                        [FFStyleModel dicWithRect:CGRectMake(255, 255, 230, 110)],
                                                        [FFStyleModel dicWithRect:CGRectMake(255, 375, 230, 110)]];
            model.rectArray = @[rectMessage1, rectMessage2, rectMessage3, rectMessage4, rectMessage5, rectMessage6, rectMessage7, rectMessage8, rectMessage9, rectMessage10, rectMessage11];
        }
            break;
    }
    return model;
}


+ (NSDictionary *)dicWithRect:(CGRect)rect {
    CGPoint center = CGPointMake((rect.origin.x + rect.size.width / 2.f) / 500, (rect.origin.y + rect.size.height / 2.f) / 500);
    CGSize size = CGSizeMake(rect.size.width / 500.f, rect.size.height / 500.f);
    
    return @{@"center" : @(center), @"size" : @(size)};
}


@end
