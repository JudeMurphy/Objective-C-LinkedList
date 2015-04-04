//
//  main.m
//  LinkedListProject
//
//  Created by Jude Murphy on 9/25/14.
//  Copyright (c) 2014 Jude Murphy. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "list.h"

int main(int argc, const char * argv[])
{
    @autoreleasepool
    {        
        list *myList = [[list alloc] init];
        
        [myList addFirst:[NSString stringWithFormat:@"%i", 5]];
        [myList printList];
        
        [myList deleteFirst];
        [myList printList];

        [myList addFirst:[NSString stringWithFormat:@"%i", 5]];
        [myList addLast:[NSString stringWithFormat:@"%i", 10]];
        [myList printList];
        
        [myList deleteLast];
        [myList printList];
        
        [myList addLast:[NSString stringWithFormat:@"%i", 5]];
        [myList deleteElement:[NSString stringWithFormat:@"%i", 5]];
        [myList printList];
        
        [myList addInSortedOrder:[NSString stringWithFormat:@"%i", 20]];
        [myList addInSortedOrder:[NSString stringWithFormat:@"%i", 5]];
        [myList addInSortedOrder:[NSString stringWithFormat:@"%i", 25]];
        [myList addInSortedOrder:[NSString stringWithFormat:@"%i", 15]];
        [myList printList];
        
        [myList deleteInSortedOrder];
        [myList printList];
        
        [myList addInSortedOrder:[NSString stringWithFormat:@"%i", 20]];
        [myList addInSortedOrder:[NSString stringWithFormat:@"%i", 5]];
        [myList addInSortedOrder:[NSString stringWithFormat:@"%i", 25]];
        [myList addInSortedOrder:[NSString stringWithFormat:@"%i", 15]];
        [myList addInPosition:@"100" andPosition:4];
        [myList printList];
        
        [myList deleteInPosition:4];
        [myList printList];
        
        NSString *answer = [myList firstElement];
        NSString *answer2 = [myList lastElement];
        NSString *answer3 = [myList elementInPosition:2];

        NSLog(@"\n");
        NSLog(@"First Element: %@", answer);
        NSLog(@"Last Element: %@", answer2);
        NSLog(@"Element in index 2: %@", answer3);

    }
    return 0;
}
