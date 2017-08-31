//
//  NotificationsViewController.m
//  Accelerators
//
//  Created by Rushikesh Kulkarni on 30/08/17.
//  Copyright © 2017 organisation. All rights reserved.
//

#import "NotificationsViewController.h"

@interface NotificationsViewController ()

@end

@implementation NotificationsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.notificationTblView.dataSource = self;
    self.notificationTblView.delegate = self;
    self.notificationTblView.rowHeight = UITableViewAutomaticDimension;
    self.notificationTblView.estimatedRowHeight = 77;
}

#pragma mark - Tablview Datasource & Delegate methods.
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 10;
}
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return UITableViewAutomaticDimension;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    static  NSString *cellIdentifier = @"Cell";
    NotificationsCustomCell *cell = [tableView dequeueReusableCellWithIdentifier:cellIdentifier];
    if (cell == nil) {
        NSArray *myNib = [[NSBundle mainBundle]loadNibNamed:@"NotificationsCustomCell" owner:self options:nil];
        cell = (NotificationsCustomCell *)[myNib lastObject];
    }
    cell.selectionStyle = UITableViewCellSelectionStyleNone;
    cell.notificationLbl.numberOfLines = 0;
    cell.notificationLbl.text = @"ishuadihdiuhsd ishuaduudsuc ishuhhdsuc ishuadihdiuhsd ishuaduudsuc ishuhhdsuc ishuadihdiuhsd ishuaduudsuc ishuhhdsuc ishuadihdiuhsd ishuaduudsuc ishuhhdsuc ishuadihdiuhsd ishuaduudsuc ishuhhdsuc ishuadihdiuhsd ishuaduudsuc ishuhhdsuc";
    
    return cell;
}


- (IBAction)backBtnAction:(id)sender {
}
@end
