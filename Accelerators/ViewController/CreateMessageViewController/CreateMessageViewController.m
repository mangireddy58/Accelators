//
//  CreateMessageViewController.m
//  CoreData2
//
//  Created by Rushikesh Kulkarni on 28/08/17.
//  Copyright © 2017 simplicity. All rights reserved.
//

#import "CreateMessageViewController.h"

@interface CreateMessageViewController ()

@end

@implementation CreateMessageViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self loadInputViews];
}
- (void) loadInputViews {
    //Drop down
    NSArray *el2 = @[@"Expert1", @"Expert2", @"Expert3", @"Expert4", @"Expert15"];
    self.picker = [[DownPicker alloc] initWithTextField:self.expertTypeTxtFld withData:el2];
    [self.picker setPlaceholder:@"Please Select Expert*"];
    [self.picker setPlaceholderWhileSelecting:@"Please Select Expert*"];
    
    self.messageTxtView.text = @"";
    [self.messageTxtView setValue:[UIColor whiteColor] forKeyPath:@"_placeholderLabel.textColor"];
    self.messageTxtView.text = @"Message*";
    self.messageTxtView.textColor = [UIColor lightGrayColor];
    self.messageTxtView.delegate = self;
    [self.messageTxtView.layer setBackgroundColor: [[UIColor whiteColor] CGColor]];
    [self.messageTxtView.layer setBorderColor: [[UIColor blackColor] CGColor]];
    [self.messageTxtView.layer setBorderWidth: 1.0];
    [self.messageTxtView.layer setCornerRadius: 4.0f];
    [self.messageTxtView.layer setMasksToBounds:YES];
    
    switch ((VIEWHEIGHT == 568)?1:((VIEWHEIGHT == 667)?2:3)) {
    case 1:{
        self.createMsgLbl.font = LFONT_13;
        self.expertListLbl.font = LFONT_13;
        self.submitBtn.titleLabel.font = BFONT_13;
        self.cancelBtn.titleLabel.font = BFONT_13;
    }
        break;
    case 2:{
        self.createMsgLbl.font = LFONT_15;
        self.expertListLbl.font = LFONT_15;
        self.submitBtn.titleLabel.font = BFONT_15;
        self.cancelBtn.titleLabel.font = BFONT_15;
    }
        break;
    default:{
        self.createMsgLbl.font = LFONT_17;
        self.expertListLbl.font = LFONT_17;
        self.submitBtn.titleLabel.font = BFONT_17;
        self.cancelBtn.titleLabel.font = BFONT_17;
    }
        break;
    }
}

#pragma mark - Submit
- (IBAction)submitBtnAction:(id)sender {
    
}
#pragma mark - Cancel
- (IBAction)cancelBtnAction:(id)sender {
}
#pragma mark - TextView Delegate Methods.
-(void)textViewDidBeginEditing:(UITextView *)textView {
    if ([textView.text isEqualToString:@"Message*"]) {
        textView.text = @"";
        textView.textColor = [UIColor lightGrayColor];
    }
    [textView becomeFirstResponder];
}
-(void)textViewDidEndEditing:(UITextView *)textView {
    if ([textView.text isEqualToString:@""]) {
        textView.text = @"Message*";
        textView.textColor = [UIColor lightGrayColor];
    }
    [textView resignFirstResponder];
}
-(BOOL) textFieldShouldReturn:(UITextField *)textField{
    [textField resignFirstResponder];
    return YES;
}
@end
