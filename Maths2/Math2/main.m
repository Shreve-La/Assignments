//
//  main.m
//  Maths 2
//
//  Created by swcl on 2017-05-02.
//  Copyright © 2017 Shreve LaFramenta. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Question.h"
#import "InputHandler.h"
#import "ScoreKeeper.h"
#import "QuestionManager.h"
#import "QuestionFactory.h"



int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        ScoreKeeper *scoreKeeper = [[ScoreKeeper alloc] init];
        QuestionManager *questionManager = [[QuestionManager alloc]init];
        QuestionFactory *questionFactory = [[QuestionFactory alloc] init];


        
        while (TRUE){
//            Question *question = [[Question alloc] init];
//            NSLog(@"%@", question.question);
//            
                        Question *question = [[Question alloc] init];
            
                        NSLog(@"%@", [AdditionQuestion generatequestion ]);
                        

            
            
            printf("What is the answer: ");
            NSString* inputStr = [InputHandler getInput];
            
            if ([inputStr isEqual: @"quit"]){
                break;}
            
            NSInteger answer = [question getAnswer];
            
            NSInteger intValue = [inputStr integerValue];
            if (intValue == answer){
                NSLog(@"Right!");
                [scoreKeeper IncreaseRight];
                NSLog(@"Your have %ld right, %ld wrong", (long)scoreKeeper.right, (long)scoreKeeper.wrong);
        
            }else{
                NSLog(@"Wrong!");
                [scoreKeeper IncreaseWrong];
                NSLog(@"Your have %ld right, %ld wrong", (long)scoreKeeper.right, (long)scoreKeeper.wrong);
                }
            
                [scoreKeeper CalcPercent];
            [questionManager.questions addObject:question];
            NSLog(@"Your have gotten %ld%% right", (long)scoreKeeper.percent);
            [questionManager timeOutput];
            
        }
        
        
    }
    return 0;

}

