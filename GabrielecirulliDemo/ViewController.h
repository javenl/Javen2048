//
//  ViewController.h
//  GabrielecirulliDemo
//
//  Created by qunzhi on 14-3-25.
//
//

#import <UIKit/UIKit.h>
#import "NodeController.h"

@interface ViewController : UIViewController

@property (weak, nonatomic) IBOutlet UILabel *textView1;
@property (strong,nonatomic) NodeController *nodeController;

@end
