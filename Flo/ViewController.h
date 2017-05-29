#import <UIKit/UIKit.h>
#import "CounterView.h"
#import "PushButtonView.h"
#import "GraphView.h"

@interface ViewController : UIViewController

@property (weak, nonatomic) IBOutlet UIView *containerView;
@property (weak, nonatomic) IBOutlet CounterView *counterView;
@property (weak, nonatomic) IBOutlet UILabel *counterLabel;
@property (weak, nonatomic) IBOutlet GraphView *graphView;

@property BOOL isGraphViewShowing;

@end

