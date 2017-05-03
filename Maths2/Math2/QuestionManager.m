//
//  QuestionManager.m
//  Maths
//
//  Created by swcl on 2017-05-03.
//  Copyright © 2017 Shreve LaFramenta. All rights reserved.
//

#import "QuestionManager.h"

@implementation QuestionManager

- (instancetype)init
{
    self = [super init];
    if (self) {
        
        _questions = [[NSMutableArray alloc] init];
    }
    
    return self;
}
@end
