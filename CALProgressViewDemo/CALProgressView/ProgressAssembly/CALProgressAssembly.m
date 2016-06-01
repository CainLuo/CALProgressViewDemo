//
//  CALProgressAssembly.m
//  CALProgressAssembly
//
//  Created by Cain on 31/5/2016.
//  Copyright © 2016 Cain. All rights reserved.
//

#import "CALProgressAssembly.h"

#define PERCENTAGE_LABEL_HEIGHT 15
#define PROGRESS_VIEW_HEIGHT    5

@interface CALProgressAssembly()

@property (nonatomic, strong, readwrite) CALProgressView *progressView;
@property (nonatomic, strong) UILabel *percentageTitle;
@property (nonatomic, strong) UILabel *percentageLabel;

@end

@implementation CALProgressAssembly

- (instancetype)initWithFrame:(CGRect)frame {
    
    if (self = [super initWithFrame:frame]) {
        
        self.progressViewHeight = 5;
        
        [self addSubview:self.progressView];
        [self addSubview:self.percentageTitle];
        [self addSubview:self.percentageLabel];
    }
    
    return self;
}

#pragma mark - Set Progress View
- (CALProgressView *)progressView {
    
    if (!_progressView) {
        
        _progressView = [[CALProgressView alloc] initWithFrame:CGRectMake(0,
                                                                          PERCENTAGE_LABEL_HEIGHT + PROGRESS_VIEW_HEIGHT,
                                                                          self.frame.size.width,
                                                                          self.progressViewHeight)];
        
        _progressView.progressViewStyle = AspProgressViewDefaultStyle;
        _progressView.progressColor           = [UIColor colorWithRed:142.f / 255.f green:196.f / 255.f blue:1.f / 255.f alpha:1.0f];
        _progressView.progressBackgroundColor = [UIColor lightGrayColor];
    }
    
    return _progressView;
}

#pragma mark - Set Title Label
- (UILabel *)percentageTitle {
    
    if (!_percentageTitle) {
        
        _percentageTitle = [[UILabel alloc] initWithFrame:CGRectMake(0,
                                                                     0,
                                                                     self.frame.size.width / 2,
                                                                     PERCENTAGE_LABEL_HEIGHT)];
        
        _percentageTitle.font      = [UIFont systemFontOfSize:10];
        _percentageTitle.textColor = [UIColor blueColor];
        
        _percentageTitle.adjustsFontSizeToFitWidth = YES;
        
    }
    
    return _percentageTitle;
}

- (void)setProgressTitle:(NSString *)progressTitle {
    
    _progressTitle = progressTitle;
    self.percentageTitle.text = progressTitle;
}

- (void)setTitleColor:(UIColor *)titleColor {
    
    _titleColor = titleColor;
    self.percentageTitle.textColor = titleColor;
}

#pragma mark - Set Percentage Label
- (UILabel *)percentageLabel {
    
    if (!_percentageLabel) {
        
        _percentageLabel = [[UILabel alloc] initWithFrame:CGRectMake(self.frame.size.width / 2,
                                                                     0,
                                                                     self.frame.size.width / 2,
                                                                     PERCENTAGE_LABEL_HEIGHT)];
        
        _percentageLabel.font      = [UIFont systemFontOfSize:10];
        _percentageLabel.textColor = [UIColor blueColor];
        
        _percentageLabel.textAlignment             = NSTextAlignmentRight;
        _percentageLabel.adjustsFontSizeToFitWidth = YES;
    }
    
    return _percentageLabel;
}

- (void)setProgressPercentage:(CGFloat)progressPercentage {
    
    _progressPercentage = progressPercentage;
    
    self.progressView.progress = progressPercentage;
    
    self.percentageLabel.text = [NSString stringWithFormat:@"%.f%c", progressPercentage * 100, 37];
}

- (void)setPercentageColor:(UIColor *)percentageColor {
    
    self.percentageLabel.textColor = percentageColor;
}

#pragma mark - Set Progress View Height
- (void)setProgressViewHeight:(CGFloat)progressViewHeight {
    
    CGFloat height = progressViewHeight + PERCENTAGE_LABEL_HEIGHT + PROGRESS_VIEW_HEIGHT;
    
    self.frame = CGRectMake(self.frame.origin.x,
                            self.frame.origin.y,
                            self.frame.size.width,
                            height);
    
    self.progressView.progressHeight = progressViewHeight;
}

#pragma mark - is Need Label
- (void)setIsNeedTitleLabel:(BOOL)isNeedTitleLabel {
    self.percentageTitle.hidden = !isNeedTitleLabel;
}

- (void)setIsNeedPercentageLabel:(BOOL)isNeedPercentageLabel {
    self.percentageLabel.hidden = !isNeedPercentageLabel;
}

- (void)setIsNeedTitleLabelAndPercentageLabel:(BOOL)isNeedTitleLabelAndPercentageLabel {
    self.percentageTitle.hidden = !isNeedTitleLabelAndPercentageLabel;
    self.percentageLabel.hidden = !isNeedTitleLabelAndPercentageLabel;
}

@end
