//
//  IdeaReportViewController.h
//  Accelerators
//
//  Created by Rushikesh Kulkarni on 30/08/17.
//  Copyright © 2017 organisation. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "RootViewController.h"
#import "GlobalConstant.h"
#import "ReportCustomCell.h"

@interface IdeaReportViewController : RootViewController<UITableViewDataSource, UITableViewDelegate>
@property (weak, nonatomic) IBOutlet UILabel *ideaReportLbl;
@property (weak, nonatomic) IBOutlet UITableView *ideaReportTblView;
- (IBAction)backAction:(id)sender;


@end
