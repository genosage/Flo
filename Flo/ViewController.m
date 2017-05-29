#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    _counterLabel.text = [NSString stringWithFormat:@"%d", _counterView.counter];
    
    UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(counterViewTap:)];
    [_containerView addGestureRecognizer:tap];
}

- (IBAction)btnPushButton_click:(PushButtonView *)sender {
    
    if (sender.isAddButton) {
        _counterView.counter++;
    } else {
        _counterView.counter--;
    }
    
    _counterLabel.text = [NSString stringWithFormat:@"%d", _counterView.counter];
    
    if (_isGraphViewShowing) {
        [self counterViewTap:nil];
    }
}

- (void)counterViewTap:(UITapGestureRecognizer *)sender {
    
    if (_isGraphViewShowing) {
        [UIView transitionFromView:_graphView toView:_counterView duration:1.0 options:UIViewAnimationOptionTransitionFlipFromLeft | UIViewAnimationOptionShowHideTransitionViews completion:nil];
    } else {
        [UIView transitionFromView:_counterView toView:_graphView duration:1.0 options:UIViewAnimationOptionTransitionFlipFromRight | UIViewAnimationOptionShowHideTransitionViews completion:nil];
    }
  
    _isGraphViewShowing = !_isGraphViewShowing;
}

@end
