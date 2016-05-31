//
//  CALProgressAssembly.h
//  CALProgressAssembly
//
//  Created by Cain on 31/5/2016.
//  Copyright © 2016 Cain. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CALProgressView.h"

@interface CALProgressAssembly : UIView

@property (nonatomic, strong, readonly) CALProgressView *progressView;

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
