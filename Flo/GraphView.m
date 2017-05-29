#import "GraphView.h"

@implementation GraphView

- (void)drawRect:(CGRect)rect {
    CGContextRef context = UIGraphicsGetCurrentContext();
    CGColorSpaceRef colorSpace = CGColorSpaceCreateDeviceRGB();
    
    CFArrayRef colors = CFArrayCreate(kCFAllocatorDefault, (const void*[]){_startColor.CGColor, _endColor.CGColor}, 2, nil);
    
    CGGradientRef gradient = CGGradientCreateWithColors(colorSpace, colors, (CGFloat[]){
        0.0f,
        1.0f
    });
    
    CGPoint startPoint = CGPointZero;
    CGPoint endPoint = CGPointMake(0.0f, rect.size.height);
    
    CGContextDrawLinearGradient(context, gradient, startPoint, endPoint, 0);
}

@end
