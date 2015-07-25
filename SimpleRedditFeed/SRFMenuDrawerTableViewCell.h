//
//  SRFMenuDrawerTableViewCell.h
//  
//
//  Created by elif ece arslan on 7/24/15.
//
//

#import <UIKit/UIKit.h>

@interface SRFMenuDrawerTableViewCell : UITableViewCell

@property (nonatomic, copy) NSString *sectionTitle;
@property (nonatomic, strong) UIImage *iconImage;
@property(nonatomic, weak) UIImageView *menuCellIcon;
@property(nonatomic, weak) UILabel *menuItemLabel;



@end
