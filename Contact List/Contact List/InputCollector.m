//
//  InputCollector.m
//  Contact List
//
//  Created by swcl on 2017-05-02.
//  Copyright © 2017 Shreve LaFramenta. All rights reserved.
//

#import "InputCollector.h"

@implementation InputCollector


+ (NSString *)inputForPrompt:(NSString *)promptString{
    NSLog(@"%@", promptString);
    
    NSString *userResponse = [self getInput];

    return userResponse;
}

+ (NSString *)getInput{
    char inputChars[255];
    fgets(inputChars, 255, stdin);
    NSString *inputStr = [[NSString alloc] initWithUTF8String:inputChars];
    inputStr = [inputStr stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
    return inputStr;
}

@end
