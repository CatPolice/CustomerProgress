//
//  CustomerProgress.m
//  CustomerProgress
//
//  Created by gavin on 16/3/26.
//  Copyright © 2016年 gavin. All rights reserved.
//

#import "CustomerProgress.h"

@implementation CustomerProgress


- (instancetype)initWithFrame:(CGRect)frame{
    
    self = [super initWithFrame:frame];
    if (self) {
        self.backgroundColor = [UIColor whiteColor];
        self.progressValue = 0;
    }
    
    return self;
}



- (void)setProgressValue:(CGFloat)progressValue{
    _progressValue = progressValue;
    [self setNeedsDisplay];
}

- (CGFloat)getProgressValue{
    return _progressValue;
}


/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
 
*/
 
- (void)drawRect:(CGRect)rect {
    // Drawing code
    CGContextRef ctx = UIGraphicsGetCurrentContext();
    CGFloat r = rect.size.width/2;
//    CGContextAddArc(ctx, r, r, r, 0, 3.141592654*2, 0);
    CGContextAddArc(ctx, r, r, r, 0, 3.141592654*2*_progressValue, 0);
    CGContextAddLineToPoint(ctx, r, r);
    CGContextSetRGBFillColor(ctx, 0, 0, 1, 1);
    CGContextFillPath(ctx);
}


@end
