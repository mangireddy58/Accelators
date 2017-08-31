//
//  SubmitNewIdeasViewController.m
//  CoreData2
//
//  Created by Rushikesh Kulkarni on 28/08/17.
//  Copyright © 2017 simplicity. All rights reserved.
//

#import "SubmitNewIdeasViewController.h"

@interface SubmitNewIdeasViewController ()

@end

@implementation SubmitNewIdeasViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.abstractTextView.text = @"qwer qwer qwer qwer qwer qwer qwer qwer qwer qwer qwer qwer qwer qwer qwer qwer qwer qwer qwer qwer qwer qwer qwer qwer qwer qwer qwer qwer qwer qwer qwer qwer qwer qwer qwer qwer qwer qwer qwer qwer qwer qwer qwer qwer qwer qwer qwer qwer qwer qwer qwer qwer qwer qwer qwer qwer qwer qwer qwer qwer qwer qwer qwer qwer qwer qwer qwer qwer qwer qwer qwer qwer qwer qwer qwer qwer qwer qwer qwer qwer qwer qwer qwer qwer qwer qwer qwer qwer qwer qwer qwer qwer qwer qwer qwer qwer qwer qwer qwer qwer qwer qwer qwer qwer qwer qwer qwer qwer qwer qwer qwer qwer qwer qwer qwer qwer qwer qwer qwer qwer qwer qwer qwer qwer qwer qwer qwer qwer qwer qwer qwer qwer qwer qwer qwer qwer qwer qwer qwer qwer qwer qwer qwer qwer qwer qwer qwer qwer qwer qwer qwer qwer qwer qwer qwer qwer qwer qwer qwer qwer qwer qwer qwer qwer qwer qwer qwer qwer qwer qwer qwer qwer qwer qwer qwer qwer qwer qwer qwer qwer qwer qwer qwer qwer qwer qwer qwer qwer qwer qwer qwer qwer qwer qwer qwer qwer qwer qwer qwer redd ";
    
    [self loadInputViews];
}
- (void) loadInputViews {
//    self.abstractTextView.text = @"";
    [self.abstractTextView setValue:[UIColor whiteColor] forKeyPath:@"_placeholderLabel.textColor"];
    self.abstractTextView.text = @"Abstract*";
    self.abstractTextView.textColor = [UIColor lightGrayColor];
    self.abstractTextView.delegate = self;
    [self.abstractTextView.layer setBackgroundColor: [[UIColor whiteColor] CGColor]];
    [self.abstractTextView.layer setBorderColor: [[UIColor blackColor] CGColor]];
    [self.abstractTextView.layer setBorderWidth: 1.0];
    [self.abstractTextView.layer setCornerRadius: 4.0f];
    [self.abstractTextView.layer setMasksToBounds:YES];
    
    switch ((VIEWHEIGHT == 568)?1:((VIEWHEIGHT == 667)?2:3)) {
        case 1:{
            self.neIdeasLabel.font = LFONT_13;
            self.characterCountLabel.font = LFONT_13;
            self.fileFormatLbl.font = LFONT_13;
            self.uploadFileBtn.titleLabel.font = BFONT_13;
            self.submitBtn.titleLabel.font = BFONT_13;
            self.cancelBtn.titleLabel.font = BFONT_13;
        }
            break;
        case 2:{
            self.neIdeasLabel.font = LFONT_15;
            self.characterCountLabel.font = LFONT_15;
            self.fileFormatLbl.font = LFONT_15;
            self.uploadFileBtn.titleLabel.font = BFONT_15;
            self.submitBtn.titleLabel.font = BFONT_15;
            self.cancelBtn.titleLabel.font = BFONT_15;
        }
            break;
        default:{
            self.neIdeasLabel.font = LFONT_17;
            self.characterCountLabel.font = LFONT_17;
            self.fileFormatLbl.font = LFONT_17;
            self.uploadFileBtn.titleLabel.font = BFONT_17;
            self.submitBtn.titleLabel.font = BFONT_17;
            self.cancelBtn.titleLabel.font = BFONT_17;
        }
            break;
    }
}

#pragma mark - UploadFile
- (IBAction)uploadFileBtnAction:(id)sender {
    UIDocumentPickerViewController *documentPicker = [[UIDocumentPickerViewController alloc] initWithDocumentTypes:@[@"com.apple.iwork.pages.pages", @"com.apple.iwork.numbers.numbers", @"com.apple.iwork.keynote.key",@"public.image", @"com.apple.application", @"public.item",@"public.data", @"public.content", @"public.audiovisual-content", @"public.movie", @"public.audiovisual-content", @"public.video", @"public.audio", @"public.text", @"public.data", @"public.zip-archive", @"com.pkware.zip-archive", @"public.composite-content", @"public.text"]inMode:UIDocumentPickerModeImport];
    documentPicker.delegate = self;
    documentPicker.modalPresentationStyle = UIModalPresentationFormSheet;
    [self presentViewController:documentPicker animated:YES completion:nil];
}
#pragma mark - iCloud files
- (void)documentPicker:(UIDocumentPickerViewController *)controller didPickDocumentAtURL:(NSURL *)url {
    if (controller.documentPickerMode == UIDocumentPickerModeImport) {
        NSString *alertMessage = [NSString stringWithFormat:@"Successfully imported %@", [url lastPathComponent]];
        UIAlertController *alert = [UIAlertController alertControllerWithTitle:@"Success" message:alertMessage preferredStyle:UIAlertControllerStyleAlert];
        UIAlertAction *ok = [UIAlertAction actionWithTitle:@"Ok" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
            
        }];
        [alert addAction:ok];
        [self presentViewController:alert animated:YES completion:nil];
    }
}
#pragma mark - Submit
- (IBAction)submitBtnAction:(id)sender {
    [self fnForMainViewController];
}
#pragma mark - Cancel
- (IBAction)cancelBtnAction:(id)sender {
    [self fnForMainViewController];
}

//- (void)textViewDidChange:(UITextView *)textView{
//    
//    NSInteger restrictedLength = 1000;
//    
//    NSString *temp=textView.text;
//    
//    if([[textView text] length] > restrictedLength){
//        textView.text=[temp substringToIndex:[temp length]-1];
//    }
//}
#pragma mark - TextView Delegate Methods.
-(void)textViewDidBeginEditing:(UITextView *)textView {
    if ([textView.text isEqualToString:@"Abstract*"]) {
        textView.text = @"";
        textView.textColor = [UIColor lightGrayColor];
    }
    [textView becomeFirstResponder];
}
-(void)textViewDidEndEditing:(UITextView *)textView {
    if ([textView.text isEqualToString:@""]) {
        textView.text = @"Abstract*";
        textView.textColor = [UIColor lightGrayColor];
    }
    [textView resignFirstResponder];
}
-(BOOL) textFieldShouldReturn:(UITextField *)textField{
    [textField resignFirstResponder];
    return YES;
}
- (BOOL)textView:(UITextView *)textView shouldChangeTextInRange:(NSRange)range replacementText:(NSString *)text {
    return textView.text.length + (text.length - range.length) <= 1000;
}
@end
