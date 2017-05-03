//
//  InputCollector.h
//  Contact List
//
//  Created by swcl on 2017-05-02.
//  Copyright © 2017 Shreve LaFramenta. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface InputCollector : NSObject

@property (nonatomic) NSString *userNameInput;
@property (nonatomic) NSString *promptString;

+ (NSString *)inputForPrompt:(NSString *)promptString;



@end
