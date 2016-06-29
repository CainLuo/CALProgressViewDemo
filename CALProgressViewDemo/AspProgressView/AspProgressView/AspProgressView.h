//
//  AspProgressView.h
//  CALProgressViewDemo
//
//  Created by Cain on 13/6/2016.
//  Copyright © 2016 Cain. All rights reserved.
//


/* AspProgressView 使用说明
 
 self.progressView = [[CALProgressView alloc] initWithFrame:CGRectMake(60, 250, self.view.frame.size.width / 2, 100)];
 
 self.progressView.progressViewStyle = AspProgressViewSinglenessStyle;
 self.progressView.progress = 0.5;
 self.progressView.progressColor = [UIColor redColor];
 self.progressView.backgroundColor = [UIColor blackColor];
 */

#import <UIKit/UIKit.h>

typedef NS_ENUM(NSInteger, AspProgressViewStyle) {
    AspProgressViewDefaultStyle,
    AspProgressViewSinglenessStyle,
};

@interface AspProgressView : UIView

/**
 *  you can set progress percentage
 */
@property (nonatomic, assign) CGFloat progress;

/**
 *  you can set progress height
 */
@property (nonatomic, assign) CGFloat progressHeight;

/**
 *  you can set progress view background color
 */
@property (nonatomic, strong) UIColor *progressBackgroundColor;

/**
 *  you can set progress color
 *
 *  @param frame default color red:142.f / 255.f green:196.f / 255.f blue:1.f / 255.f alpha:1.0f
 */
@property (nonatomic, strong) UIColor *progressColor;

/**
 *  you can set progress view style
 *
 *  @param frame default color red:221.f / 255.f green:221.f / 255.f blue:221.f / 255.f alpha:1.f
 */
@property (nonatomic, assign) AspProgressViewStyle progressViewStyle;

@end