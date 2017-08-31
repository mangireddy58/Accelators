//
//  IdeaReportViewController.m
//  Accelerators
//
//  Created by Rushikesh Kulkarni on 30/08/17.
//  Copyright © 2017 organisation. All rights reserved.
//

#import "IdeaReportViewController.h"

@interface IdeaReportViewController ()

@end

@implementation IdeaReportViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.ideaReportTblView.dataSource = self;
    self.ideaReportTblView.delegate = self;
    self.ideaReportTblView.rowHeight = UITableViewAutomaticDimension;
    self.ideaReportTblView.estimatedRowHeight = 77;
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
    ReportCustomCell *cell = [tableView dequeueReusableCellWithIdentifier:cellIdentifier];
    if (cell == nil) {
        NSArray *myNib = [[NSBundle mainBundle]loadNibNamed:@"ReportCustomCell" owner:self options:nil];
        cell = (ReportCustomCell *)[myNib lastObject];
    }
    cell.selectionStyle = UITableViewCellSelectionStyleNone;
    cell.ideaNameLbl.numberOfLines = 0;
    cell.ideaNameLbl.text = @"ishuadihdiuhsd ishuaduudsuc ishuhhdsuc ishuadihdiuhsd ishuaduudsuc ishuhhdsuc ishuadihdiuhsd ishuaduudsuc ishuhhdsuc ishuadihdiuhsd ishuaduudsuc ishuhhdsuc ishuadihdiuhsd ishuaduudsuc ishuhhdsuc ishuadihdiuhsd ishuaduudsuc ishuhhdsuc";
    
    return cell;
}

- (IBAction)backAction:(id)sender {
}
@end
