#import "PushButtonView.h"

@implementation PushButtonView

- (void)drawRect:(CGRect)rect {
    UIBezierPath *path = [UIBezierPath bezierPathWithOvalInRect:rect];
    [_fillColor setFill];
    [path fill];
    
    CGFloat width = CGRectGetWidth(rect);
    CGFloat height = CGRectGetHeight(rect);
    
    CGFloat plusHeight = 3.0;
    CGFloat plusWidth = MIN(width, height) * 0.6;
    
    UIBezierPath *plusPath = [[UIBezierPath alloc] init];
    plusPath.lineWidth = plusHeight;
    
    [plusPath  moveToPoint:CGPointMake(width / 2 - plusWidth / 2 + 0.5, height / 2 + 0.5)];
    [plusPath addLineToPoint:CGPointMake(width / 2 + plusWidth / 2 + 0.5, height / 2 + 0.5)];
    
    if (_isAddButton) {
        [plusPath moveToPoint:CGPointMake(width / 2 + 0.5, height / 2 - plusWidth / 2 + 0.5)];
        [plusPath addLineToPoint:CGPointMake(width / 2 + 0.5, height / 2 + plusWidth / 2 + 0.5)];
    }
    
    [[UIColor whiteColor] setStroke];
    [plusPath stroke];
}

@end
