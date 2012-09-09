//
//  AALaunchTransitionView.m
//  AALaunchTransition
//
//  Created by Ahmet AYGÜN on 09.09.2012.
//  Copyright (c) 2012 Ahmet AYGÜN. All rights reserved.
//

#import "LaunchView.h"

@implementation LaunchView

- (id)initWithFrame:(CGRect)frame
{
    return [self initWithFrame:CGRectZero showStatusBarOnComplete:YES withDuration:2.0 withOptions:UIViewAnimationCurveEaseOut];
}

- (id)initWithFrame:(CGRect)frame showStatusBarOnComplete:(BOOL)showStatusBar
{
    return [self initWithFrame:CGRectZero showStatusBarOnComplete:showStatusBar withDuration:2.0 withOptions:UIViewAnimationCurveEaseOut];
}

- (id)initWithFrame:(CGRect)frame showStatusBarOnComplete:(BOOL)showStatusBar withDuration:(NSTimeInterval)animationDuration
{
    return [self initWithFrame:CGRectZero showStatusBarOnComplete:(BOOL)showStatusBar withDuration:animationDuration withOptions:UIViewAnimationCurveEaseOut];
}

- (id)initWithFrame:(CGRect)frame showStatusBarOnComplete:(BOOL)showStatusBar withDuration:(NSTimeInterval)animationDuration withOptions:(UIViewAnimationOptions)animationOptions
{
    self = [super initWithFrame:frame];
    if (self) {
        if (UIInterfaceOrientationIsPortrait([[UIApplication sharedApplication] statusBarOrientation])){
            if ([[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPhone)
                [self setImage:[UIImage imageWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"Default" ofType:@"png"]]];
            else
                [self setImage:[UIImage imageWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"Default-Portrait" ofType:@"png"]]];
        } else {
            [self setImage:[UIImage imageWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"Default-Landscape" ofType:@"png"]]];
        }
        
        self.frame = [[UIScreen mainScreen] bounds];
        
        [UIView animateWithDuration:animationDuration
                              delay:0
                            options:animationOptions
                         animations:^{
                             self.alpha = 0;
                         }
                         completion:^(BOOL finished){
                             [self removeFromSuperview];
                             if (showStatusBar)
                                 [[UIApplication sharedApplication] setStatusBarHidden:NO withAnimation:UIStatusBarAnimationNone];
                         }];
    }
    return self;
}

@end
