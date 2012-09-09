//
//  AALaunchTransitionView.h
//  AALaunchTransition
//
//  Created by Ahmet AYGÜN on 09.09.2012.
//  Copyright (c) 2012 Ahmet AYGÜN. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface LaunchView : UIImageView

- (id)initWithFrame:(CGRect)frame showStatusBarOnComplete:(BOOL)showStatusBar;
- (id)initWithFrame:(CGRect)frame showStatusBarOnComplete:(BOOL)showStatusBar withDuration:(NSTimeInterval)animationDuration;
- (id)initWithFrame:(CGRect)frame showStatusBarOnComplete:(BOOL)showStatusBar withDuration:(NSTimeInterval)animationDuration withOptions:(UIViewAnimationOptions)animationOptions;

@end
