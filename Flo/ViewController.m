#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    _counterLabel.text = [NSString stringWithFormat:@"%d", _counterView.counter];
}

- (IBAction)btnPushButton_click:(PushButtonView *)sender {
    
    if (sender.isAddButton) {
        _counterView.counter++;
    } else {
        _counterView.counter--;
    }
    
    _counterLabel.text = [NSString stringWithFormat:@"%d", _counterView.counter];
}

@end
