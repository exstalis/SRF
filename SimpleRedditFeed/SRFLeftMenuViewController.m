//
//  SRFLeftMenuViewController.m
//  SimpleRedditFeed
//
//  Created by elif ece arslan on 7/24/15.
//  Copyright (c) 2015 exstalis. All rights reserved.
//

#import "SRFLeftMenuViewController.h"
#import "UIViewController+MMDrawerController.h"
#import "SRFMenuDrawerTableViewCell.h"

static const CGFloat kSRFTableViewTopInset = 160.0;
static NSString * const kSRFDrawerCellReuseIdentifier = @"SRFDrawerCellReuseIdentifier";

@interface SRFLeftMenuViewController (){
    UIButton * addAccountButton;
    
}

@end

@implementation SRFLeftMenuViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    _menuTableView = [[UITableView alloc]initWithFrame:self.view.bounds style:UITableViewStyleGrouped];
    self.menuTableView.delegate = self;
    self.menuTableView.dataSource = self;
    [self.menuTableView setAutoresizingMask:UIViewAutoresizingFlexibleHeight|UIViewAutoresizingFlexibleWidth];
    
    [self.menuTableView setSeparatorColor:[UIColor colorWithRed:49.0/255.0
                                                      green:54.0/255.0
                                                       blue:57.0/255.0
                                                      alpha:1.0]];
    [self.menuTableView setBackgroundColor:[UIColor colorWithRed:77.0/255.0
                                                       green:79.0/255.0
                                                        blue:80.0/255.0
                                                       alpha:1.0]];
    [self.view setBackgroundColor:[UIColor colorWithRed:66.0/255.0
                                                  green:69.0/255.0
                                                   blue:71.0/255.0
                                                  alpha:1.0]];
    [self.view addSubview:self.menuTableView];
    [self.view setBackgroundColor:[UIColor clearColor]];
//    make sections editable so that user can add fav subreddits.
    
    self.favoriteReddits = [NSMutableArray arrayWithObjects:@[@"Front Page", @"All", @"me/f/all", @"pics",@"funny", @"Videos", @"Music", @"AdviceAnimals",@"gifs",@"IAmA",@"Science"],nil];
    
    
    
}


-(void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:YES];
    [self.menuTableView reloadSections:[NSIndexSet indexSetWithIndexesInRange:NSMakeRange(0, self.menuTableView.numberOfSections-1)] withRowAnimation:UITableViewRowAnimationNone];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return 4;
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    
//these sections should be editable, change them later
    
    switch (section) {
        case SRFMenuSectionAccounts:
            return 3;
            break;
        case SRFMenuSectionFavorites:
            return 11;
        case SRFMenuSectionBookmarks:
            return 1;
        case SRFMenuSectionControl:
            return 2;
        default:
            return 0;
    }

    
}
-(NSString*)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section{
    switch (section) {
        case SRFMenuSectionAccounts:
            return @"Accounts";
        case SRFMenuSectionFavorites:
            return @"Favorites";
        case SRFMenuSectionBookmarks:
            return @"Bookmarks";
        case SRFMenuSectionControl:
            return @"Control";
        default:
            return nil;
    }
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    SRFMenuDrawerTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:kSRFDrawerCellReuseIdentifier forIndexPath:indexPath];
    if (cell == nil) {
        cell = [[SRFMenuDrawerTableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:kSRFDrawerCellReuseIdentifier];
        [cell setSelectionStyle:UITableViewCellSelectionStyleGray];
    }
    switch ((SRFMenuSection)indexPath.row) {
        case SRFMenuSectionAccounts:
        
            [cell.textLabel setText:@"User Name!"];
        
            break;
        case SRFMenuSectionFavorites:
            
            
        default:
            break;
    }
    return cell;
    
    
}

@end
