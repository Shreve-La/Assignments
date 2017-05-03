//
//  Box.m
//  Boxes
//
//  Created by swcl on 2017-05-02.
//  Copyright © 2017 Shreve LaFramenta. All rights reserved.
//

#import "Box.h"

@implementation Box

-(void)makeBox:(float)height :(float)width :(float)length {
    self.height = height;
    self.width = width;
    self.length = length;
}

-(float)calcVolume {
    float result;
    result = self.height * self.width * self.length;
    return result;
}



@end
