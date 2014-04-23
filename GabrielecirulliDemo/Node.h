//
//  Node.h
//  GabrielecirulliDemo
//
//  Created by qunzhi on 14-3-25.
//
//

#import <Foundation/Foundation.h>

@interface Node : NSObject

@property (weak,nonatomic) Node *up;
@property (weak,nonatomic) Node *left;
@property (weak,nonatomic) Node *down;
@property (weak,nonatomic) Node *right;
@property (strong,nonatomic) NSString *valueString;
@property (nonatomic) NSInteger value;

@end
