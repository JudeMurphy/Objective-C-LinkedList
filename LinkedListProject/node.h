//
//  node.h
//  LinkedListProject
//
//  Created by Jude Murphy on 9/25/14.
//  Copyright (c) 2014 Jude Murphy. All rights reserved.
//

#ifndef LinkedListProject_node_h
#define LinkedListProject_node_h

@interface node : NSObject
{
    NSString *num;
    node *next;
}

@property (nonatomic, strong) NSString *num;
@property (nonatomic, strong) node *next;

- (id)init;
- (id)initNodeWithValue: (NSString *) value;

@end

#endif
