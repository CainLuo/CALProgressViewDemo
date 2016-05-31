//
//  CALProgressView.h
//  CALProgressView
//
//  Created by Cain on 31/5/2016.
//  Copyright © 2016 Cain. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef NS_ENUM(NSInteger, AspProgressViewStyle) {
    AspProgressViewDefaultStyle,
    AspProgressViewSinglenessStyle,
};

@interface CALProgressView : UIView

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
 */
@property (nonatomic, strong) UIColor *progressColor;

/**
 *  you can set progress view style
 */
@property (nonatomic, assign) AspProgressViewStyle progressViewStyle;

@end
