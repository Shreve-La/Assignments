//
//  ContactList.m
//  Contact List
//
//  Created by swcl on 2017-05-02.
//  Copyright © 2017 Shreve LaFramenta. All rights reserved.
//

#import "ContactList.h"
#import "Contact.h"

@implementation ContactList

- (instancetype)init
{
    self = [super init];
    if (self) {
        _contacts = [[NSMutableArray alloc] init];
    }
    return self;
}

-(void)addContact:(Contact *)newContact{
    [self.contacts addObject:newContact];
}

-(void) printList {
    for (Contact *contact in _contacts) {
        NSLog(@"%lu: <%@>", (unsigned long)[_contacts indexOfObject:contact], contact.name);
    }
}

@end
