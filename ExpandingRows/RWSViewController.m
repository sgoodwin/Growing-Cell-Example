//
//  RWSViewController.m
//  ExpandingRows
//

#import "RWSViewController.h"

@interface RWSViewController ()
@property (nonatomic, copy) NSNumber *rowHeight;
@end

@implementation RWSViewController

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 1;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    RWSGrowingCell *cell = [tableView dequeueReusableCellWithIdentifier:@"grower" forIndexPath:indexPath];
    cell.delegate = self;
    
    return cell;
}

- (void)growingCell:(RWSGrowingCell *)cell didChangeSize:(CGSize)size
{
    [self.tableView beginUpdates];
    
    self.rowHeight = @(size.height);
    
    [self.tableView endUpdates];
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    CGFloat height = [self.rowHeight floatValue];
    if(height < 44.0f){
        height = 44.0f;
    }
    
    return height;
}

@end
