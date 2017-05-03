//
//  ScoreKeeper.m
//  Maths
//
//  Created by swcl on 2017-05-02.
//  Copyright © 2017 Shreve LaFramenta. All rights reserved.
//

#import "ScoreKeeper.h"

@implementation ScoreKeeper

- (instancetype)init{
    if (self = [super init]){
        _right = 0;
        _wrong = 0;
        _percent = 0;
    }
    return self;
}

- (void)IncreaseRight {
    self.right++;
    self.percent = (100 * self.right) / (self.right+self.wrong);

}

- (void)IncreaseWrong {
    _wrong++;
    self.percent = (100 * self.right) / (self.right+self.wrong);
}

@end
