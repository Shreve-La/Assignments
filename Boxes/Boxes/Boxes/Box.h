//
//  Box.h
//  Boxes
//
//  Created by swcl on 2017-05-02.
//  Copyright © 2017 Shreve LaFramenta. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Box : NSObject


// Add three properties (height, width, and length) and make each member a float.
@property (nonatomic) float height;
@property (nonatomic) float width;
@property (nonatomic) float length;

//Create an instance method that initializes a Box by taking in three floats as parameters.
-(void)makeBox:(float)height :(float)width :(float)length;

-(float)calcVolume;





@end
