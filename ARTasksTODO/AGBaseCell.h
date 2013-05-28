#import <UIKit/UIKit.h>

@interface AGBaseCell : UITableViewCell

+ (id)cellForTableView:(UITableView *)tableView;
+ (NSString *)cellIdentifier;

- (id)initWithCellIdentifier:(NSString *)cellID;

@end
