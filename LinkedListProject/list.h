//
//  list.h
//  LinkedListProject
//
//  Created by Jude Murphy on 9/25/14.
//  Copyright (c) 2014 Jude Murphy. All rights reserved.
//

#ifndef LinkedListProject_list_h
#define LinkedListProject_list_h

#import "node.h"

@interface list : NSObject
{
    node *head;
}

@property (nonatomic, strong) node *head;

-(void) printList;
-(id) initListWithNode: (node *) n;
-(void) addFirst: (NSString *) val;
-(void) deleteFirst;
-(void) addLast: (NSString *) val;
-(void) deleteLast;
-(void) deleteElement: (NSString *) n;
-(void) addInSortedOrder: (NSString *) n;
-(void) deleteInSortedOrder;
-(void) addInPosition: (NSString *) n andPosition: (int) pos;
-(void) deleteInPosition: (int) pos;
-(NSString *) firstElement;
-(NSString *) lastElement;
-(NSString *) elementInPosition: (int) pos;

@end
#endif
