//
//  AALaunchTransitionView.m
//  AALaunchTransition
//
//  Copyright (c) 2012 Ahmet AYGÜN
//
//  Permission is hereby granted, free of charge, to any person
//  obtaining a copy of this software and associated documentation
//  files (the "Software"), to deal in the Software without
//  restriction, including without limitation the rights to use,
//  copy, modify, merge, publish, distribute, sublicense, and/or sell
//  copies of the Software, and to permit persons to whom the
//  Software is furnished to do so, subject to the following
//  conditions:
//
//  The above copyright notice and this permission notice shall be
//  included in all copies or substantial portions of the Software.
//
//  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
//  EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES
//  OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
//  NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT
//  HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY,
//  WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING
//  FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR
//  OTHER DEALINGS IN THE SOFTWARE.
//

#import "LaunchView.h"

@implementation LaunchView

- (id)initWithFrame:(CGRect)frame
{
    return [self initWithFrame:CGRectZero withDuration:2.0 withOptions:UIViewAnimationCurveEaseOut];
}

- (id)initWithFrame:(CGRect)frame withDuration:(NSTimeInterval)animationDuration
{
    return [self initWithFrame:CGRectZero withDuration:animationDuration withOptions:UIViewAnimationCurveEaseOut];
}

- (id)initWithFrame:(CGRect)frame withDuration:(NSTimeInterval)animationDuration withOptions:(UIViewAnimationOptions)animationOptions
{
    self = [super initWithFrame:frame];
    if (self) {
        if (UIInterfaceOrientationIsPortrait([[UIApplication sharedApplication] statusBarOrientation])){
            if ([[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPhone)
            {
                if ([[UIScreen mainScreen] bounds].size.height == 568.0f)
                    [self setImage:[UIImage imageWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"Default-568h@2x" ofType:@"png"]]];
                else
                    [self setImage:[UIImage imageWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"Default" ofType:@"png"]]];
            }
            else
                [self setImage:[UIImage imageWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"Default-Portrait" ofType:@"png"]]];
        } else {
            [self setImage:[UIImage imageWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"Default-Landscape" ofType:@"png"]]];
        }
        
        self.frame = [[UIScreen mainScreen] bounds];
        self.contentMode = UIViewContentModeTopLeft;
        
        [UIView animateWithDuration:animationDuration
                              delay:0
                            options:animationOptions
                         animations:^{
                             self.alpha = 0;
                         }
                         completion:^(BOOL finished){
                             [self removeFromSuperview];
                         }];
    }
    return self;
}

@end
