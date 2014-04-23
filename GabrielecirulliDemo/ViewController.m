//
//  ViewController.m
//  GabrielecirulliDemo
//
//  Created by qunzhi on 14-3-25.
//
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (NodeController *)nodeController{
    if (_nodeController == nil) {
        _nodeController = [[NodeController alloc] init];
    }
    return _nodeController;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    //[self.view addGestureRecognizer:[[UIGestureRecognizer  alloc] ]]
    
    UISwipeGestureRecognizer *recognizerLeft;
    recognizerLeft = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(onGestureRecognizer:)];
    UISwipeGestureRecognizer *recognizerRight;
    recognizerRight = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(onGestureRecognizer:)];
    UISwipeGestureRecognizer *recognizerUp;
    recognizerUp = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(onGestureRecognizer:)];
    UISwipeGestureRecognizer *recognizerDown;
    recognizerDown = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(onGestureRecognizer:)];
    
    [recognizerLeft setDirection:UISwipeGestureRecognizerDirectionLeft];
    [recognizerRight setDirection:UISwipeGestureRecognizerDirectionRight];
    [recognizerDown setDirection:UISwipeGestureRecognizerDirectionDown];
    [recognizerUp setDirection:UISwipeGestureRecognizerDirectionUp];
    
    [self.view addGestureRecognizer:recognizerLeft];
    [self.view addGestureRecognizer:recognizerRight];
    [self.view addGestureRecognizer:recognizerDown];
    [self.view addGestureRecognizer:recognizerUp];
    
    [self.nodeController createNodeGroup];
    [self.nodeController printNodeGroup];

    [self.nodeController getNodeWithI:0 andJ:0].value = 2;
    [self.nodeController getNodeWithI:0 andJ:1].value = 2;
    [self.nodeController getNodeWithI:0 andJ:2].value = 2;
    [self.nodeController getNodeWithI:0 andJ:3].value = 2;
    [self.nodeController getNodeWithI:1 andJ:2].value = 3;
    [self.nodeController getNodeWithI:1 andJ:1].value = 2;
    [self.nodeController getNodeWithI:2 andJ:3].value = 2;
    [self.nodeController getNodeWithI:3 andJ:0].value = 3;
    [self.nodeController getNodeWithI:3 andJ:3].value = 2;
    [self.nodeController printNodeGroup];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void) onGestureRecognizer:(UISwipeGestureRecognizer *)recognizer{
    if (recognizer.direction == UISwipeGestureRecognizerDirectionUp) {
        self.textView1.text = @"UP";
        
        [self.nodeController moveAllToUp];
        [self.nodeController printNodeGroup];
    }
    if (recognizer.direction == UISwipeGestureRecognizerDirectionLeft) {
        self.textView1.text = @"LEFT";
        
        [self.nodeController moveAllToLeft];
        [self.nodeController printNodeGroup];
    }
    if (recognizer.direction == UISwipeGestureRecognizerDirectionDown) {
        self.textView1.text = @"DOWN";
        [self.nodeController moveAllToDown];
        [self.nodeController printNodeGroup];
    }
    if (recognizer.direction == UISwipeGestureRecognizerDirectionRight) {
        self.textView1.text = @"RIGHT";
        
        [self.nodeController moveAllToRight];
        [self.nodeController printNodeGroup];
    }
}

@end
