//
//  MessagesViewController.h
//  Accelerators
//
//  Created by Rushikesh Kulkarni on 30/08/17.
//  Copyright © 2017 organisation. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "RootViewController.h"
#import "GlobalConstant.h"
#import "MessagesCustomCell.h"

@interface MessagesViewController : RootViewController<UITableViewDataSource, UITableViewDelegate>
@property (weak, nonatomic) IBOutlet UILabel *messageLbl;
@property (weak, nonatomic) IBOutlet UITableView *messagesTblView;

- (IBAction)backAction:(id)sender;



@end
