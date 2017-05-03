//
//  QuestionManager.h
//  Maths
//
//  Created by swcl on 2017-05-03.
//  Copyright © 2017 Shreve LaFramenta. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface QuestionManager : NSMutableArray

@property NSMutableArray *questions;
@property NSString *timeStats;
@property NSTimeInterval totalT;
@property NSTimeInterval *averageT;

-(NSString*)timeOutput;


@end
