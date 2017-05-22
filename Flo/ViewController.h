#import <UIKit/UIKit.h>
#import "CounterView.h"
#import "PushButtonView.h"

@interface ViewController : UIViewController

@property (weak, nonatomic) IBOutlet CounterView *counterView;
@property (weak, nonatomic) IBOutlet UILabel *counterLabel;

@end

