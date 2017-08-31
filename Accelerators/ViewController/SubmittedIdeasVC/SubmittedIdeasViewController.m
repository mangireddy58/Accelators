//
//  SubmittedIdeasViewController.m
//  CoreData2
//
//  Created by Rushikesh Kulkarni on 28/08/17.
//  Copyright © 2017 simplicity. All rights reserved.
//

#import "SubmittedIdeasViewController.h"

@interface SubmittedIdeasViewController ()

@end

@implementation SubmittedIdeasViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.ideaTblView.dataSource = self;
    self.ideaTblView.delegate = self;
    self.ideaTblView.rowHeight = UITableViewAutomaticDimension;
    self.ideaTblView.estimatedRowHeight = 128;
}
#pragma mark - Tablview Datasource & Delegate methods.
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 10;
}
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return 128;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    static  NSString *cellIdentifier = @"Cell";
    SubmittedIdeasCell *cell = [self.ideaTblView dequeueReusableCellWithIdentifier:cellIdentifier];
    if (cell == nil) {
        NSArray *myNIb = [[NSBundle mainBundle]loadNibNamed:@"SubmittedIdeasCell" owner:self options:nil];
        cell = (SubmittedIdeasCell *)[myNIb lastObject];
    }
    cell.selectionStyle = UITableViewCellSelectionStyleNone;
    cell.tag = indexPath.row;
    [cell.readMoreBtn addTarget:self action:@selector(viewButtonPressed:) forControlEvents:UIControlEventTouchUpInside];
    return cell;
}

- (IBAction)backAction:(id)sender {
    [self fnForMainViewController];
}
- (void)viewButtonPressed:(UIButton *)sender {
//    UIButton *readMoreBtn = (UIButton *)sender;
//    self.objUniversalDataModel.accountDictionary = [self.responseArray objectAtIndex:viewButton.tag];
//    [self fnForAccountDetailViewController];
}
@end
