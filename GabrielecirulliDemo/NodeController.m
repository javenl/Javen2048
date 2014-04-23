//
//  NodeController.m
//  GabrielecirulliDemo
//
//  Created by qunzhi on 14-3-25.
//
//

#import "NodeController.h"

@implementation NodeController

- (NSMutableArray *)arrayGroup{
    if (_arrayGroup == nil) {
        //_arrayGroup = [[NSMutableArray alloc] init];
        _arrayGroup = [self createNodeGroup];
    }
    return _arrayGroup;
}

- (NSMutableArray *) createNodeGroup{
    NSMutableArray *arrayGroup = [[NSMutableArray alloc] init];
    for (int i = 0; i < 4 ; i++) {
        NSMutableArray *array = [[NSMutableArray alloc] init];
        for (int j = 0 ; j < 4; j++) {
            Node *node = [[Node alloc] init];
            node.value = -1;
            [array addObject:node];
        }
        [arrayGroup addObject:array];
    }
    return arrayGroup;
}

- (void) printNodeGroup{
    NSMutableString *mutableStr = [[NSMutableString alloc] init];
    for (int i = 0 ; i < 4; i++) {
        for (int j = 0; j < 4; j++) {
            if ([[self.arrayGroup objectAtIndex:i] objectAtIndex:j] != nil) {
                Node *node = [[self.arrayGroup objectAtIndex:i] objectAtIndex:j];
                [mutableStr appendString:[NSString stringWithFormat:@"%3i",node.value]];
                //NSLog(@"%3i",node.value);
            }
        }
        [mutableStr appendString:@"\n"];
        //NSLog(@"\n");
    }
    NSLog(@"\n%@",mutableStr);
}

- (Node *)getNodeWithI:(NSInteger )i andJ:(NSInteger)j{
    return [[self.arrayGroup objectAtIndex:i] objectAtIndex:j];
}

#pragma mark move

- (BOOL) moveToRightWithI:(NSInteger )i andJ:(NSInteger)j{
    if (j < 3) {
        Node *node = [self getNodeWithI:i andJ:j];
        Node *nextNode = [self getNodeWithI:i andJ:j+1];
        if (nextNode.value == -1) {
            nextNode.value = node.value;
            node.value = -1;
        }else if(nextNode.value == node.value){
            nextNode.value += node.value;
            node.value = -1;
        }
    }
    return YES;
}

- (BOOL) moveToLeftWithI:(NSInteger )i andJ:(NSInteger)j{
    if (j > 0) {
        Node *node = [self getNodeWithI:i andJ:j];
        Node *nextNode = [self getNodeWithI:i andJ:j-1];
        if (nextNode.value == -1) {
            nextNode.value = node.value;
            node.value = -1;
        }else if(nextNode.value == node.value){
            nextNode.value += node.value;
            node.value = -1;
        }
    }
    return YES;
}

- (BOOL) moveToDownWithI:(NSInteger )i andJ:(NSInteger)j{
    if (i < 3) {
        Node *node = [self getNodeWithI:i andJ:j];
        Node *nextNode = [self getNodeWithI:i+1 andJ:j];
        if (nextNode.value == -1) {
            nextNode.value = node.value;
            node.value = -1;
        }else if(nextNode.value == node.value){
            nextNode.value += node.value;
            node.value = -1;
        }
    }
    return YES;
}

- (BOOL) moveToUpWithI:(NSInteger )i andJ:(NSInteger)j{
    if (i > 0) {
        Node *node = [self getNodeWithI:i andJ:j];
        Node *nextNode = [self getNodeWithI:i-1 andJ:j];
        if (nextNode.value == -1) {
            nextNode.value = node.value;
            node.value = -1;
        }else if(nextNode.value == node.value){
            nextNode.value += node.value;
            node.value = -1;
        }
    }
    return YES;
}

#pragma mark moveAll

- (BOOL) moveAllToRight{
    BOOL flag = NO;
    for (int i = 0 ; i < 4; i++) {
        for (int k = 0; k < 3; k++) {
            for (int j = 3; j >= 0; j--) {
                if ([[self.arrayGroup objectAtIndex:i] objectAtIndex:j] != nil) {
                    Node *node = [self getNodeWithI:i andJ:j];
                    if (node.value != -1) {
                        [self moveToRightWithI:i andJ:j];
                    }
                    //NSLog(@"%3i",node.value);
                }
            }
        }
        
        //NSLog(@"\n");
    }
    return flag;
}

- (BOOL) moveAllToLeft{
    BOOL flag = NO;
    for (int i = 0 ; i < 4; i++) {
        for (int k = 0; k < 3; k++) {
            for (int j = 0; j < 4; j++) {
                if ([[self.arrayGroup objectAtIndex:i] objectAtIndex:j] != nil) {
                    Node *node = [self getNodeWithI:i andJ:j];
                    if (node.value != -1) {
                        [self moveToLeftWithI:i andJ:j];
                    }
                    //NSLog(@"%3i",node.value);
                }
            }
        }
        
        //NSLog(@"\n");
    }
    return flag;
}

- (BOOL) moveAllToDown{
    BOOL flag = NO;
    for (int j = 0 ; j < 4; j++) {
        for (int k = 0; k < 3; k++) {
            for (int i = 3; i >= 0; i--) {
                if ([[self.arrayGroup objectAtIndex:i] objectAtIndex:j] != nil) {
                    Node *node = [self getNodeWithI:i andJ:j];
                    if (node.value != -1) {
                        [self moveToDownWithI:i andJ:j];
                    }
                    //NSLog(@"%3i",node.value);
                }
            }
        }
        
        //NSLog(@"\n");
    }
    return flag;
}

- (BOOL) moveAllToUp{
    BOOL flag = NO;
    for (int j = 0 ; j < 4; j++) {
        for (int k = 0; k < 3; k++) {
            for (int i = 3; i >= 0; i--) {
                if ([[self.arrayGroup objectAtIndex:i] objectAtIndex:j] != nil) {
                    Node *node = [self getNodeWithI:i andJ:j];
                    if (node.value != -1) {
                        [self moveToUpWithI:i andJ:j];
                    }
                    //NSLog(@"%3i",node.value);
                }
            }
        }
        
        //NSLog(@"\n");
    }
    return flag;
}

- (void) createFromLeftNode:(Node *)leftNode{
    
}

@end
