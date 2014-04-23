//
//  NodeController.h
//  GabrielecirulliDemo
//
//  Created by qunzhi on 14-3-25.
//
//

#import <Foundation/Foundation.h>
#import "Node.h"

@interface NodeController : NSObject
/*
@property (strong,nonatomic) NSArray *nodeFromUp;
@property (strong,nonatomic) NSArray *nodeFromLeft;
@property (strong,nonatomic) NSArray *nodeFromDown;
@property (strong,nonatomic) NSArray *nodeFromRight;
*/

@property (strong,nonatomic) NSMutableArray *arrayGroup;

//- (void) createNodeGroup;
- (NSMutableArray *) createNodeGroup;
- (void) printNodeGroup;
- (Node *)getNodeWithI:(NSInteger )i andJ:(NSInteger)j;

- (BOOL) moveToRightWithI:(NSInteger )i andJ:(NSInteger)j;
- (BOOL) moveToLeftWithI:(NSInteger )i andJ:(NSInteger)j;
- (BOOL) moveToDownWithI:(NSInteger )i andJ:(NSInteger)j;
- (BOOL) moveToUpWithI:(NSInteger )i andJ:(NSInteger)j;

- (BOOL) moveAllToRight;
- (BOOL) moveAllToLeft;
- (BOOL) moveAllToDown;
- (BOOL) moveAllToUp;


@end
