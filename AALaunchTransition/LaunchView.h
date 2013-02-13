//
//  AALaunchTransitionView.h
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

#import <UIKit/UIKit.h>

/**
 LaunchView is a UIImageView basically shown after original launch image hidden
  and will be fade out after some delay.
 */
@interface LaunchView : UIImageView

@property (nonatomic) CGFloat duration;
@property (nonatomic) CGFloat delay;
@property (nonatomic) UIViewAnimationOptions animationOptions;

/**---------------------------------------------------------------------------------------
 * @name Instance methods
 *  ---------------------------------------------------------------------------------------
 */
/**
 Initializes an UIImageView with given frame and fades it out after a given duration. Uses UIViewAnimationCurveEaseOut.

 @param frame Frame of UIImageView will be shown in.
 @param animationDuration Time interval that UIImageView will be shown in.
 @return id
 */
- (id)initWithFrame:(CGRect)frame withDuration:(NSTimeInterval)animationDuration;

/**
 Initializes an UIImageView with given frame and fades it out after a given duration with given animation options.

 @param frame Frame of UIImageView will be shown in.
 @param animationDuration Time interval that UIImageView will be shown in.
 @param animationOptions Animation options, any of UIViewAnimationOptions could be given, UIViewAnimationCurveEaseOut by default.
 @return id
 */
- (id)initWithFrame:(CGRect)frame
       withDuration:(NSTimeInterval)animationDuration
        withOptions:(UIViewAnimationOptions)animationOptions;

/**
 Initializes an UIImageView with given frame and fades it out after a given duration with given animation options.
 
 @param frame Frame of UIImageView will be shown in.
 @param animationDuration Time interval that UIImageView will be shown in.
 @param animationOptions Animation options, any of UIViewAnimationOptions could be given, UIViewAnimationCurveEaseOut by default.
 @param delay Time interval after which the dismissal animation will begin.
 @return id
 */
- (id)initWithFrame:(CGRect)frame
       withDuration:(NSTimeInterval)animationDuration
        withOptions:(UIViewAnimationOptions)animationOptions
              delay:(NSTimeInterval)delay;

/**
 Initializes an UIImageView with given frame and fades it out after a given duration with given animation options.
 
 @param frame Frame of UIImageView will be shown in.
 @param animationDuration Time interval that UIImageView will be shown in.
 @param animationOptions Animation options, any of UIViewAnimationOptions could be given, UIViewAnimationCurveEaseOut by default.
 @param delay Time interval after which the dismissal animation will begin.
 @param dismissImmediately If `YES`, triggers the fade out animation right away. If `NO`, then `animateDismssal:` must be called on this instance.
 @return id
 */
- (id)initWithFrame:(CGRect)frame
       withDuration:(NSTimeInterval)animationDuration
        withOptions:(UIViewAnimationOptions)animationOptions
              delay:(NSTimeInterval)delay
 dismissImmediately:(BOOL)dismissImmediately;

/**
 Performs the fade-out animation for the view.
 
 @param completion Block to be called upon animation completion. Can be nil.
 */
- (void)animateDismissal:(void (^)(void))completion;

@end
