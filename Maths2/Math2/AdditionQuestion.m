//
//  AdditionQuestion.m
//  Maths
//
//  Created by swcl on 2017-05-02.
//  Copyright © 2017 Shreve LaFramenta. All rights reserved.
//

#import "AdditionQuestion.h"

@implementation AdditionQuestion

- (instancetype) init {
    if (self = [super init]){
        NSInteger firstNum = arc4random_uniform(100);
        NSInteger secondNum = arc4random_uniform(100);
        _question = [NSString stringWithFormat:@"What is %ld + %ld", firstNum, secondNum];
        _answer = firstNum + secondNum;
        
  //      NSLog(@"What is %ld + %ld", firstNum, secondNum);
        NSDate *startTime = [NSDate date];
        NSLog(@"Start time: %@", startTime);

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


NSDate *endTime;

@end
