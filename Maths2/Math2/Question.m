//
//  Question.m
//  Maths
//
//  Created by swcl on 2017-05-02.
//  Copyright © 2017 Shreve LaFramenta. All rights reserved.
//

#import "Question.h"

@implementation Question

- (instancetype) init {
    if (self = [super init]){
        _rightValue = arc4random_uniform(100);
        _leftValue = arc4random_uniform(100);
        _startTime = [NSDate date];
        }
    return self;
    }

- (NSInteger) getAnswer {
    self.endTime = [NSDate date];
    return self.answer;
}

- (NSInteger) answerTime {
    NSTimeInterval elapsedTime = [_endTime timeIntervalSinceDate:_startTime];
    return elapsedTime;
    }

-(void)generateQuestion{
    ;
}



// NSDate *endTime;

@end
