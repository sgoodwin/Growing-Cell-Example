//
//  RWSGrowingCell.h
//  ExpandingRows
//

@protocol RWSGrowingCellDelegate;

@interface RWSGrowingCell : UITableViewCell<UITextViewDelegate>
@property (nonatomic, weak) IBOutlet UITextView *inputField;
@property (nonatomic, weak) id<RWSGrowingCellDelegate> delegate;
@end

@protocol RWSGrowingCellDelegate <NSObject>
- (void)growingCell:(RWSGrowingCell *)cell didChangeSize:(CGSize)size;
@end