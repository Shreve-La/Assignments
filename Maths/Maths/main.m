//
//  main.m
//  Maths
//
//  Created by swcl on 2017-05-02.
//  Copyright © 2017 Shreve LaFramenta. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AdditionQuestion.h"
#import "InputHandler.h"
#import "ScoreKeeper.h"


int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        ScoreKeeper *scoreKeeper = [[ScoreKeeper alloc] init];
        
        while (TRUE){
            AdditionQuestion *question1 = [[AdditionQuestion alloc] init];
            printf("What is the answer: ");
            
            NSString* inputStr = [InputHandler getInput];
            
            if ([inputStr isEqual: @"quit"]){
                break;}
            
            NSInteger intValue = [inputStr integerValue];
            if (intValue == question1.answer){
                NSLog(@"Right!");
                [scoreKeeper IncreaseRight];
                NSLog(@"Your have %ld right, %ld wrong", (long)scoreKeeper.right, (long)scoreKeeper.wrong);
        
            }else{
                NSLog(@"Wrong!");
                [scoreKeeper IncreaseWrong];
                NSLog(@"Your have %ld right, %ld wrong", (long)scoreKeeper.right, (long)scoreKeeper.wrong);
                }
                [scoreKeeper CalcPercent];
            NSLog(@"Your batting average is %ld", (long)scoreKeeper.percent);
        }
    
        
    
    return 0;}

}

