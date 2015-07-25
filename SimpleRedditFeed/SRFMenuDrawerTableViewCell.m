//
//  SRFMenuDrawerTableViewCell.m
//  
//
//  Created by elif ece arslan on 7/24/15.
//
//

#import "SRFMenuDrawerTableViewCell.h"

@implementation SRFMenuDrawerTableViewCell

- (void)awakeFromNib {
    self.selectionStyle = UITableViewCellSelectionStyleNone;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];
}



- (void)setHighlighted:(BOOL)highlighted animated:(BOOL)animated {
    [super setHighlighted:highlighted animated:animated];
    [self highlightCell:highlighted];
}

- (void)highlightCell:(BOOL)highlight {
    UIColor *tintColor = [UIColor whiteColor];
    if(highlight) {
        tintColor = [UIColor colorWithWhite:1.0 alpha:0.6];
    }
    self.menuItemLabel.textColor = tintColor;
    self.menuCellIcon.tintColor = tintColor;
    
    
}



- (NSString *)sectionTitle {
    return self.menuItemLabel.text;
    
}


-(void)setSectionTitle:(NSString *)sectionTitle{
    self.menuItemLabel.text=sectionTitle;
}


- (UIImage *)iconImage {
    return self.menuCellIcon.image;
}

-(void)setMenuCellIcon:(UIImageView *)menuCellIcon{
    [self.menuCellIcon.image imageWithRenderingMode:UIImageRenderingModeAlwaysTemplate];
    
}


@end
