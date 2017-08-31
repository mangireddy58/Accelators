//
//  MessagesViewController.m
//  Accelerators
//
//  Created by Rushikesh Kulkarni on 30/08/17.
//  Copyright © 2017 organisation. All rights reserved.
//

#import "MessagesViewController.h"

@interface MessagesViewController ()

@end

@implementation MessagesViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    self.messagesTblView.dataSource = self;
    self.messagesTblView.delegate = self;
    self.messagesTblView.rowHeight = UITableViewAutomaticDimension;
    self.messagesTblView.estimatedRowHeight = 77;
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
    MessagesCustomCell *cell = [tableView dequeueReusableCellWithIdentifier:cellIdentifier];
    if (cell == nil) {
        NSArray *myNib = [[NSBundle mainBundle]loadNibNamed:@"MessagesCustomCell" owner:self options:nil];
        cell = (MessagesCustomCell *)[myNib lastObject];
    }
    cell.selectionStyle = UITableViewCellSelectionStyleNone;
    cell.messageLbl.numberOfLines = 0;
    cell.messageLbl.text = @"ishuadihdiuhsd ishuaduudsuc ishuhhdsuc ishuadihdiuhsd ishuaduudsuc ishuhhdsuc ishuadihdiuhsd ishuaduudsuc ishuhhdsuc ishuadihdiuhsd ishuaduudsuc ishuhhdsuc ishuadihdiuhsd ishuaduudsuc ishuhhdsuc ishuadihdiuhsd ishuaduudsuc ishuhhdsuc";
    
    return cell;
}

- (IBAction)backAction:(id)sender {
}
@end
