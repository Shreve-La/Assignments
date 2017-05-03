//
//  ContactList.h
//  Contact List
//
//  Created by swcl on 2017-05-02.
//  Copyright © 2017 Shreve LaFramenta. All rights reserved.
//

#import <Foundation/Foundation.h>

@class Contact;

@interface ContactList : NSArray

@property (strong, nonatomic) NSMutableArray<Contact *> *contacts;

- (void)addContact:(Contact *)newContact;
- (void) printList;



@end


