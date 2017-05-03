//
//  main.m
//  Boxes
//
//  Created by swcl on 2017-05-02.
//  Copyright © 2017 Shreve LaFramenta. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Box.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
//      Initialize a Box using three floats as inputs for height, width, and length
        Box *myBox = [[Box alloc] init];
        [myBox makeBox:1 :1 :1];
    
 
//      Calculate the volume of the box and check your answer by NSLogging the box’s volume
        float volume = [myBox calcVolume];
        NSLog(@"Volume1 =%f", volume);
        
        Box *myBox2 = [[Box alloc] init];
        [myBox2 makeBox:2 :2 :2];

 
//      Calculate the volume of 2nd box
        float volume2 = [myBox2 calcVolume];
        NSLog(@"Volume2 =%f", volume2);
        
//      Calculate how many boxes fit
        int boxesFit;
        if(volume2 > volume){
        boxesFit = (int)(volume2 / volume) ;
        } else {
        boxesFit = (int)(volume / volume2);
        }
        
        NSLog(@"Boxes fit: %d", boxesFit);
        
        
    }
    
    return 0;

}
