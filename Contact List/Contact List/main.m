//
//  main.m
//  Contact List
//
//  Created by swcl on 2017-05-02.
//  Copyright © 2017 Shreve LaFramenta. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "InputCollector.h"
#import "Contact.h"
#import "ContactList.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        ContactList *newContactList = [[ContactList alloc]init];
        while(TRUE){
        
        NSString *usernameInput = [InputCollector inputForPrompt:@"Make a new contact (new) or quit (quit)"];
        
        if([usernameInput isEqualToString:@"quit"]){NSLog(@"Good bye");break;}
        if([usernameInput isEqualToString:@"new"]){
            NSString *usernameInput = [InputCollector inputForPrompt:@"Enter your username"];
            NSString *userEmailInput = [InputCollector inputForPrompt:@"Enter your lastname"];
            
            Contact *newContact = [[Contact alloc]init];
            newContact.name = usernameInput;
            newContact.email = userEmailInput;
            
            [newContactList addContact:newContact];
        }
            if([usernameInput isEqualToString:@"list"]){[ContactList printList];}
        
            
            
            
            
        }
        
        
          
        
        
        
        
        
        
    
    }
    return 0;
}
