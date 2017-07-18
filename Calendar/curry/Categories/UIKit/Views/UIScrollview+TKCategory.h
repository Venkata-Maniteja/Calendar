//
//  UIScrollview+TKCategory.h
//  Created by Devin Ross on 11/17/10.
//
/*
 
 curry || https://github.com/devinross/curry
 
 Permission is hereby granted, free of charge, to any person
 obtaining a copy of this software and associated documentation
 files (the "Software"), to deal in the Software without
 restriction, including without limitation the rights to use,
 copy, modify, merge, publish, distribute, sublicense, and/or sell
 copies of the Software, and to permit persons to whom the
 Software is furnished to do so, subject to the following
 conditions:
 
 The above copyright notice and this permission notice shall be
 included in all copies or substantial portions of the Software.
 
 THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
 EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES
 OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
 NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT
 HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY,
 WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING
 FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR
 OTHER DEALINGS IN THE SOFTWARE.
 
 */

@import UIKit;

/** Additional functionality for `UIScrollView`.  */
@interface UIScrollView (TKCategory)

/** Sets the content offset of the scrollview to zero (0,0). */
- (void) scrollToTop;

/** Current horizontally scrolled page. */
@property (nonatomic,readonly) NSInteger currentHorizontalPage;

/** Current vertical scrolled page. */
@property (nonatomic,readonly) NSInteger currentVerticalPage;

/** States the content offset from the end of the scroll view. */
@property (nonatomic,assign,readonly) CGPoint contentOffsetFromEnd;

@end