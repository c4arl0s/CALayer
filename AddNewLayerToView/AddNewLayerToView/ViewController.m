//
//  ViewController.m
//  AddNewLayerToView
//
//  Created by Carlos Santiago Cruz on 8/31/19.
//  Copyright © 2019 Carlos Santiago Cruz. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (strong, nonatomic) IBOutlet UIView *rectanguleView;

@end

@implementation ViewController

- (instancetype)init
{
    self = [super init];
    if (self) {
        _rectanguleView = [[UIView alloc] init];
    }
    return self;
}
- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    _rectanguleView.backgroundColor = [UIColor blackColor];
    CALayer *layer = [CALayer layer];
    layer.frame = CGRectMake(0, 0, 100, 100);
    layer.backgroundColor = [UIColor blueColor].CGColor;
    [_rectanguleView.layer addSublayer:layer];
}


@end
