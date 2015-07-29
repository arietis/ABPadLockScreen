// ABPinSelectionView.m
//
// Copyright (c) 2014 Aron Bury - http://www.aronbury.com
//
// Permission is hereby granted, free of charge, to any person obtaining a copy
// of this software and associated documentation files (the "Software"), to deal
// in the Software without restriction, including without limitation the rights
// to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
// copies of the Software, and to permit persons to whom the Software is
// furnished to do so, subject to the following conditions:
//
// The above copyright notice and this permission notice shall be included in
// all copies or substantial portions of the Software.
//
// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
// IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
// FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
// AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
// LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
// OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
// THE SOFTWARE.

#import "ABPinSelectionView.h"

#define animationLength 0.15

@interface ABPinSelectionView()

- (void)setDefaultStyles;

@end

@implementation ABPinSelectionView

#pragma mark -
#pragma mark - Init methods
- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self)
    {
        [self setDefaultStyles];
    }
    return self;
}

#pragma mark -
#pragma mark - Helper Methods
- (void)setDefaultStyles
{
    _selectedColor = [UIColor whiteColor];
}

#pragma mark -
#pragma mark - Appearnce Methods
- (void)setSelected:(BOOL)selected animated:(BOOL)animated completion:(void (^)(BOOL finished))completion
{
    NSTimeInterval length = animated ? animationLength : 0.0;

    UIColor *color = selected ? self.selectedColor : [UIColor whiteColor];

    [UIView animateWithDuration:length delay:0.0f options:UIViewAnimationOptionCurveEaseIn animations:^{
        self.backgroundColor = color;
    } completion:completion];
}

@end

CGFloat const ABPinSelectionViewWidth = 47.0f;
CGFloat const ABPinSelectionViewHeight = 47.0f;