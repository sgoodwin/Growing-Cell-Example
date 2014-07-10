//
//  RWSGrowingCell.m
//  ExpandingRows
//

#import "RWSGrowingCell.h"

@implementation RWSGrowingCell

- (void)awakeFromNib
{
    [super awakeFromNib];
    
    NSTextContainer *container = self.inputField.textContainer;
    container.widthTracksTextView = YES;
}

- (void)textViewDidChange:(UITextView *)textView
{
    CGSize size = textView.contentSize;
    size.height+= 8.0f;
    [self.delegate growingCell:self didChangeSize:size];
}

@end
