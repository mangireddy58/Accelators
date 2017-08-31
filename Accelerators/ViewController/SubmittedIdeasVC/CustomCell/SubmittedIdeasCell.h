//
//  SubmittedIdeasCell.h
//  CoreData2
//
//  Created by Rushikesh Kulkarni on 28/08/17.
//  Copyright © 2017 simplicity. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SubmittedIdeasCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UILabel *ideaTitleLbl;
@property (weak, nonatomic) IBOutlet UIButton *readMoreBtn;
@property (weak, nonatomic) IBOutlet UILabel *dateLbl;
@property (weak, nonatomic) IBOutlet UILabel *pendingLbl;

@end
