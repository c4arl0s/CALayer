# CALayer

CALayer The CALayer class is conceptually very similar to UIView . 

Layers, like views, are rectangular objects that can be arranged into a hierarchical tree. Like views, they can contain content (such as an image, text, or a background color) and manage the position of their children ( sublayers ). They have methods and properties for performing animations and transforms. The only major feature of UIView that isn’t handled by CALayer is user interaction.

CALayer is not aware of the responder chain (the mechanism that iOS uses to propagate touch events through the view hierarchy) and so cannot respond to events, although it does provide methods to help determine whether a particular touch point is within the bounds of a layer.

![ios-layer-bitmap-custom-drawing](https://user-images.githubusercontent.com/24994818/64067043-262edc80-cbe7-11e9-8350-205a9c14863f.png)

``` objective-c
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
```

![Screen Shot 2019-08-31 at 12 49 52 PM](https://user-images.githubusercontent.com/24994818/64067421-d869a280-cbed-11e9-8767-87c802818fb8.png)

![Screen Shot 2019-08-31 at 12 50 36 PM](https://user-images.githubusercontent.com/24994818/64067429-f8996180-cbed-11e9-9338-d8f320ecf106.png)

