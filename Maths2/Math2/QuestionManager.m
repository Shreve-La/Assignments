//
//  QuestionManager.m
//  Maths
//
//  Created by swcl on 2017-05-03.
//  Copyright © 2017 Shreve LaFramenta. All rights reserved.
//

#import "QuestionManager.h"
#import "Question.h"

@implementation QuestionManager

- (instancetype)init
{
    self = [super init];
    if (self) {
    
        _questions = [[NSMutableArray alloc] init];
    }

    
    return self;
}

- (NSString*) timeOutput{
    self.totalT = 0;
    for ( Question *question in self.questions) {
        self.totalT += question.answerTime;
        }
    
    NSInteger numOfQuestions = [_questions count];
    NSTimeInterval averageTime = self.totalT / numOfQuestions;
    
    self.timeStats = [NSString stringWithFormat:@"Total time: %f, average time: %f", self.totalT, averageTime];
    NSLog(@"Total time: %f, average time: %f", self.totalT, averageTime);
              return self.timeStats;
}

@end
