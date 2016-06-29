//
//  AspProgressAssembly.h
//  CALProgressViewDemo
//
//  Created by Cain on 13/6/2016.
//  Copyright © 2016 Cain. All rights reserved.
//

/* AspProgressAssembly使用说明
 
 self.progressAssembly = [[CALProgressAssembly alloc] initWithFrame:CGRectMake(60, 150, self.view.frame.size.width / 2, 100)];
 
 self.progressAssembly.progressPercentage = 1024.f / 2048.f;
 
 self.progressAssembly.titleColor = [UIColor blackColor];
 self.progressAssembly.percentageColor = [UIColor purpleColor];
 self.progressAssembly.progressTitle = @"1123";
 
 */
#import <UIKit/UIKit.h>
#import "AspProgressView.h"

@interface AspProgressAssembly : UIView

@property (nonatomic, strong, readonly) AspProgressView *progressView;

@property (nonatomic, assign) CGFloat progressViewHeight;

/**
 *  set left label text color
 */
@property (nonatomic, strong) UIColor *titleColor;

/**
 *  set left label text
 */
@property (nonatomic, copy) NSString *progressTitle;

/**
 *  set right label progress percentage
 */
@property (nonatomic, assign) CGFloat progressPercentage;

/**
 *  set right label text color
 */
@property (nonatomic, strong) UIColor *percentageColor;

/**
 *  if you don't need title label, you can set NO
 */
@property (nonatomic, assign) BOOL isNeedTitleLabel;

/**
 *  if you don't need percentage label, you can set NO
 */
@property (nonatomic, assign) BOOL isNeedPercentageLabel;

/**
 *  if you don't need title and percentage label, you can set NO
 */
@property (nonatomic, assign) BOOL isNeedTitleLabelAndPercentageLabel;

@end
