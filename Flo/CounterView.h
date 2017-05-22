#import <UIKit/UIKit.h>

IB_DESIGNABLE

@interface CounterView : UIView

@property (nonatomic) IBInspectable int counter;
@property IBInspectable UIColor *outlineColor;
@property IBInspectable UIColor *counterColor;

@end
