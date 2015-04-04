//
//  node.m
//  LinkedListProject
//
//  Created by Jude Murphy on 9/25/14.
//  Copyright (c) 2014 Jude Murphy. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "node.h"


@implementation node
@synthesize next, num;

- (id)init
{
    num = 0;
    next = nil;
    
    return self;
}

- (id)initNodeWithValue: (NSString *) value
{
    num = value;
    next = nil;
    
    return self;
}

@end