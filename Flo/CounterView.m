#import "CounterView.h"

@implementation CounterView

static int const NO_OF_GLASSES = 8;
static CGFloat const π = M_PI;

- (void)drawRect:(CGRect)rect {
    CGFloat width = CGRectGetWidth(rect);
    CGFloat height = CGRectGetHeight(rect);
    
    CGPoint center = CGPointMake(width / 2, height / 2);
    CGFloat radius = MAX(width, height);
    CGFloat arcWidth = width / 3;
    
    CGFloat startAngle = 3 * π / 4;
    CGFloat endAngle = π / 4;
    
    UIBezierPath * path = [UIBezierPath bezierPathWithArcCenter:center radius:radius / 2 - arcWidth / 2 startAngle:startAngle endAngle:endAngle clockwise:YES];
    
    path.lineWidth = arcWidth;
    [_counterColor setStroke];
    [path stroke];
    
    CGFloat angleDifference = 2 * π - startAngle + endAngle;
    CGFloat arcLengthPerGlass = angleDifference / (CGFloat)NO_OF_GLASSES;
    CGFloat outlineEndAngle = arcLengthPerGlass * (CGFloat)_counter + startAngle;
    
    UIBezierPath *outlinePath = [UIBezierPath bezierPathWithArcCenter:center radius:width / 2 - 2.5 startAngle:startAngle endAngle:outlineEndAngle clockwise:YES];
    
    [outlinePath addArcWithCenter:center radius:width / 2 - arcWidth + 2.5 startAngle:outlineEndAngle endAngle:startAngle clockwise:NO];
    
    [outlinePath closePath];
    
    outlinePath.lineWidth = 5;
    [_outlineColor setStroke];
    [outlinePath stroke];
}

- (void)setCounter:(int)counter {
    if (counter >= 0 && counter <= NO_OF_GLASSES) {
        _counter = counter;
        [self setNeedsDisplay];
    }
}

@end
