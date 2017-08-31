//
//  NotificationsViewController.h
//  Accelerators
//
//  Created by Rushikesh Kulkarni on 30/08/17.
//  Copyright © 2017 organisation. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "RootViewController.h"
#import "GlobalConstant.h"
#import "NotificationsCustomCell.h"

@interface NotificationsViewController : RootViewController<UITableViewDataSource, UITableViewDelegate>
@property (weak, nonatomic) IBOutlet UILabel *notificationLbl;
@property (weak, nonatomic) IBOutlet UITableView *notificationTblView;

- (IBAction)backBtnAction:(id)sender;
@end
