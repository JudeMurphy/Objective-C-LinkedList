//
//  list.m
//  LinkedListProject
//
//  Created by Jude Murphy on 9/25/14.
//  Copyright (c) 2014 Jude Murphy. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "list.h"

@implementation list
@synthesize head;

-(id) init
{
    head = nil;
    return self;
}

-(id) initListWithNode: (node *) n
{
    head = n;
    return self;
}

-(void) addFirst: (NSString *) val
{
    node *temp = [[node alloc] init];
    temp = [temp initNodeWithValue: val];
    temp.next = head;
    head = temp;
}

-(void) deleteFirst
{
    head = head.next;
}

-(void) addLast: (NSString *) val
{
    node *temp = [[node alloc] init];
    temp = [temp initNodeWithValue:val];
    if (head == nil)
    {
        head = temp;
    }
    else
    {
        node *pointer = [[node alloc] init];
        pointer = head;
        while (pointer.next != nil)
            pointer = pointer.next;
        pointer.next = temp;
    }
}

-(void) deleteLast
{
    if (head == nil)
    {
        NSLog(@"The list is empty.");
    }
    else if(head.next == nil)
    {
        head = nil;
    }
    else
    {
        node *pointer = [[node alloc] init];
        pointer = head;
        while (pointer.next.next != nil)
        {
            pointer = pointer.next;
        }
        pointer.next = nil;
    }
}

-(void) deleteElement: (NSString *) n
{
    node *temp2 = [[node alloc] init];
    if(head == nil)
    {
        NSLog(@"The list is empty.");
    }
    else
    {
        temp2 = head;
        while ([head.num isEqualToString:n])
        {
            [self deleteFirst];
        }
        while (temp2.next != nil)
        {
            if([temp2.next.num isEqualToString: n])
            {
                temp2.next = temp2.next.next;
                temp2 = temp2.next;
            }
            else
            {
                temp2 = temp2.next;
            }
            
            if([temp2.num isEqualToString:n])
            {
                [self deleteLast];
            }
        }
    }
}

-(void) addInSortedOrder: (NSString *) n
{
    node *temp = [[node alloc] init];
    temp = [temp initNodeWithValue:n];
    
    node *temp2 = [[node alloc] init];
    temp2 = head;
    
    if (temp2 == nil)
    {
        [self addFirst:n];
    }
    else if([temp2.num intValue] > [n intValue])
    {
        temp.next = head;
        head = temp;
    }
    else
    {
        while (temp2.next != nil && [temp2.next.num intValue] < [n intValue])
        {
            temp2 = temp2.next;
        }
        
        temp.next = temp2.next;
        temp2.next = temp;
    }
}

-(void) deleteInSortedOrder
{
    node *current = [[node alloc] init];
    current = head;
    if(current == nil)
    {
        NSLog(@"This list is empty, which means there is nothing to delete! Good try! ;)");
    }
    else
    {
        while (current.next !=  nil)
        {
            current.next = current.next.next;
        }
        
        head = nil;
    }
}

-(void) addInPosition: (NSString *) n andPosition: (int) pos
{
    if (head == nil)
    {
        NSLog(@"No position exists, adding to the first position.");
        [self addFirst:n];
    }
    else if(head != nil)
    {
        @try
        {
            node *temp = [[node alloc] init];
            temp = [temp initNodeWithValue:n];
            
            node *temp2 = [[node alloc] init];
            temp2 = head;
            for (int i = 0; i < pos - 1; i++)
            {
                temp2 = temp2.next;
            }
            if (temp2 != nil)
            {
                temp.next = temp2.next;
                temp2.next = temp;
            }
            else
            {
                NSLog(@"Unable to add, position is out of bounds");
            }
        }
        @catch (NSException * e)
        {
            NSLog(@"Exception: %@", e);
        }
    }
}

-(void) deleteInPosition: (int) pos
{
    if (head != nil)
    {
        if(pos == 0)
        {
            [self deleteFirst];
        }
        else
        {
            node *temp2 = [[node alloc] init];
            temp2 = head;
            for (int i = 0; i < pos - 1; i++)
            {
                temp2 = temp2.next;
            }
            if (temp2 != nil)
            {
                temp2.next = temp2.next.next;
            }
            else
            {
                NSLog(@"Unable to remove, position is out of bounds");
            }
        }
    }
    else
    {
        NSLog(@"There are no elements in the list!");
    }
}

-(NSString *) firstElement
{
    if(head == nil)
    {
        return @"No Elements in the list!";
    }
    else
    {
        node *temp = [[node alloc] init];
        temp = head;
        return temp.num;
    }
}

-(NSString *) lastElement
{
    if(head == nil)
    {
        return @"No Elements in the list!";
    }
    else
    {
        node *temp = [[node alloc] init];
        temp = head;
        
        while (temp.next != nil)
        {
            temp = temp.next;
        }
        
        return temp.num;
    }
}

-(NSString *) elementInPosition: (int) pos
{
    if(head == nil)
    {
        return @"No Elements in the list!";
    }
    else
    {
        node *temp = [[node alloc] init];
        temp = head;
        
        for (int i = 0; i < pos; i++)
        {
            temp = temp.next;
        }
        
        return temp.num;
    }
}

-(void) printList
{
    node *temp = head;
    NSString *stringToPrint = [[NSString alloc] init];
    stringToPrint = [stringToPrint stringByAppendingString:@"<"];
    while(temp != nil)
    {
        stringToPrint = [stringToPrint stringByAppendingString: [NSString stringWithFormat:@"%@", temp.num]];
        temp = temp.next;
        if(temp != nil)
        {
            stringToPrint = [stringToPrint stringByAppendingString:@", "];
        }
    }
    stringToPrint = [stringToPrint stringByAppendingString:@">"];
    NSLog(@"%@", stringToPrint);
}

@end
