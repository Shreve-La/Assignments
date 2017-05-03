//
//  ScoreKeeper.h
//  Maths
//
//  Created by swcl on 2017-05-02.
//  Copyright © 2017 Shreve LaFramenta. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ScoreKeeper : NSObject
@property (nonatomic) NSInteger right;
@property (nonatomic) NSInteger wrong;
@property (nonatomic) NSInteger percent;
- (void)IncreaseRight;
- (void)IncreaseWrong;
- (void)CalcPercent;



@end
