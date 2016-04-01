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
        
        
        _lable = [[UILabel alloc] initWithFrame:CGRectMake(frame.size.width/4, frame.size.height/4, frame.size.width/2, frame.size.height/2)];
        _lable.textAlignment = NSTextAlignmentCenter;
        
        _lable.textColor =[UIColor blackColor];
        [self addSubview:_lable];
        
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

    _lable.text = [NSString stringWithFormat:@"%.1f%@",_progressValue*100,@"%"];
    
    NSLog(@"%f",_progressValue);
    
    CGFloat drawProgress = _progressValue;
    
    if (drawProgress == 0) {
        // 起始0为12点钟方向
        drawProgress = 1.5;
    }else{
        // 时钟方向转换
        drawProgress = drawProgress*2 + 1.5;
    }

    // Drawing code
    
    /**
     *  M_PI * 1.5  ------> 12点钟方向
     *  0           ------> 3 点钟方向
     *  M_PI * 0.5  ------> 6 点钟方向
     *  M_PI * 1.5  ------> 9 点钟方向
     *
     */
    
    CGContextRef ctx = UIGraphicsGetCurrentContext();
    CGFloat r = rect.size.width/2;
    CGContextAddArc(ctx, r, r, r, M_PI * 1.5, M_PI*drawProgress, 0);
    CGContextAddLineToPoint(ctx, r, r);
    CGContextSetRGBFillColor(ctx, 163./255, 36./255, 67./255, 1);
    CGContextFillPath(ctx);
    
    CGContextRef ctx1 = UIGraphicsGetCurrentContext();
    CGContextAddArc(ctx1, r, r, r/2, M_PI * 1.5, M_PI*drawProgress, 0);
    CGContextAddLineToPoint(ctx1, r, r);
    CGContextSetRGBFillColor(ctx1, 1, 1, 1, 1);
    CGContextFillPath(ctx1);
    
}


@end
