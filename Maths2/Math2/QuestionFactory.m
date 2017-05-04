//
//  QuestionFactory.m
//  Maths
//
//  Created by swcl on 2017-05-04.
//  Copyright © 2017 Shreve LaFramenta. All rights reserved.
//

#import "QuestionFactory.h"
@implementation QuestionFactory

- (instancetype)init
{
    self = [super init];
    if (self) {
        
        NSArray *questionSubClassNames = @[@"AdditionQuestion",@"SubtractionQuestion",@"MultiplicationQuestion",@"DivisionQuestion"];
    }
    
    return self;
}

-(void)generateQuestion{





}



@end

