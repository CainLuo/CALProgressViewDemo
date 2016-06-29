//
//  AspProgressView.m
//  CALProgressViewDemo
//
//  Created by Cain on 13/6/2016.
//  Copyright © 2016 Cain. All rights reserved.
//

#import "AspProgressView.h"

@interface AspProgressView()

@property (nonatomic, strong) UIView *progressView;

@property (nonatomic, strong) UIColor *defaultColor;

@end

@implementation AspProgressView

- (id)initWithFrame:(CGRect)frame {
    
    if (self = [super initWithFrame:frame]) {
        
        self.progressHeight = 5;
        self.progressViewStyle = AspProgressViewDefaultStyle;
        self.progress = 1;
        self.progressColor = [UIColor colorWithRed:142.f / 255.f green:196.f / 255.f blue:1.f / 255.f alpha:1.0f];
        
        self.backgroundColor = [UIColor colorWithRed:221.f / 255.f green:221.f / 255.f blue:221.f / 255.f alpha:1.f];
        
        [self addSubview:self.progressView];
    }
    
    return self;
}

- (instancetype)initWithCoder:(NSCoder *)aDecoder {
    
    if (self = [super initWithCoder:aDecoder]) {
        
        self.progressHeight = 5;
        self.progressViewStyle = AspProgressViewDefaultStyle;
        self.progress = 1;
        self.progressColor = [UIColor colorWithRed:142.f / 255.f green:196.f / 255.f blue:1.f / 255.f alpha:1.0f];
        
        self.backgroundColor = [UIColor colorWithRed:221.f / 255.f green:221.f / 255.f blue:221.f / 255.f alpha:1.f];
        
        [self addSubview:self.progressView];
    }
    
    return self;
}

#pragma mark - Get Progress View
- (UIView *)progressView {
    
    if (!_progressView) {
        
        _progressView = [[UIView alloc] initWithFrame:self.frame];
        _progressView.backgroundColor = self.progressColor;
    }
    
    return _progressView;
}

#pragma mark - Set Progress Height
- (void)setProgressHeight:(CGFloat)progressHeight {
    
    _progressHeight = progressHeight;
    _progressView.layer.cornerRadius = progressHeight / 2;
    
    self.layer.cornerRadius = self.progressHeight / 2;
    self.clipsToBounds = YES;
    
    self.progressView.frame = CGRectMake(0, 0, self.frame.size.width, progressHeight);
    self.frame = CGRectMake(self.frame.origin.x, self.frame.origin.y, self.frame.size.width, progressHeight);
}

#pragma mark - Set Color
- (void)setProgressColor:(UIColor *)progressColor {
    
    self.defaultColor      = progressColor;
    self.layer.borderColor = progressColor.CGColor;
    
    self.progressView.backgroundColor = progressColor;
}

- (void)setProgressBackgroundColor:(UIColor *)progressBackgroundColor {
    
    self.backgroundColor = progressBackgroundColor;
}

#pragma mark - Set Progress Percentage
- (void)setProgress:(CGFloat)progress {
    
    [UIView animateWithDuration:1.0f animations:^{
        self.progressView.frame = CGRectMake(0,
                                             0,
                                             self.frame.size.width * progress,
                                             self.progressHeight);
        
        switch (self.progressViewStyle) {
            case AspProgressViewSinglenessStyle:
                
                self.progressView.backgroundColor = self.defaultColor;
                
                break;
                
            default:
                
                if (progress == 1.f) {
                    
                    self.progressView.backgroundColor = self.defaultColor;
                }
                
                if (progress < 1.f && progress >= 0.5f) {
                    
                    self.progressView.backgroundColor = [UIColor colorWithRed:255.f green:154.f / 255.f blue:67.f / 255.f alpha:1.0f];
                }
                
                if (progress < 0.5f && progress >= 0.3f) {
                    
                    self.progressView.backgroundColor = [UIColor colorWithRed:255.f green:74.f / 255.f blue:137.f / 255.f alpha:1.0f];
                }
                
                if (progress < 0.3f && progress >= 0) {
                    
                    self.progressView.backgroundColor = [UIColor redColor];
                }
                
                break;
        }
    }];
}

@end
