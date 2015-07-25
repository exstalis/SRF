//
//  SRFLeftMenuViewController.h
//  SimpleRedditFeed
//
//  Created by elif ece arslan on 7/24/15.
//  Copyright (c) 2015 exstalis. All rights reserved.
//

#import <UIKit/UIKit.h>


typedef NS_ENUM(NSInteger, SRFMenuSection){
    SRFMenuSectionAccounts,
    SRFMenuSectionFavorites,
    SRFMenuSectionBookmarks,
    SRFMenuSectionControl,
    SRFMenuSectionItem_COUNT,

};


@interface SRFLeftMenuViewController : UIViewController<UITableViewDataSource,UITableViewDelegate>

@property (strong,nonatomic)NSMutableArray *favoriteReddits;
@property(strong,nonatomic)UITableView *menuTableView;
//@property(strong,nonatomic)NSArray *drawerWidth;
@end
