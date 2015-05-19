//
//  ShowCreaturesViewController.m
//  MCMS
//
//  Created by Alex Santorineos on 5/19/15.
//  Copyright (c) 2015 madApperz. All rights reserved.
//

#import "ShowCreaturesViewController.h"
#import "ViewController.h"

@interface ShowCreaturesViewController ()

@property (weak, nonatomic) IBOutlet UITextField *titleTextField;
@property (weak, nonatomic) IBOutlet UILabel *titleTextLabel;
@property (weak, nonatomic) IBOutlet UILabel *detailLabel;
@property (weak, nonatomic) IBOutlet UITextField *detailTextField;



@end

@implementation ShowCreaturesViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.titleTextLabel.text = self.name;
    self.titleTextField.text = self.name;

    self.detailTextField.text = self.detail;
    self.detailLabel.text = self.detail;

    self.editing = false;

}
- (IBAction)barButtonItem:(UIBarButtonItem *)sender {

    if (self.editing) {


        self.editing = false;
        sender.style = UIBarButtonItemStylePlain;
        sender.title =@"Edit";
        [self.titleTextField endEditing:YES];
        [self.detailTextField endEditing:YES];


    } else {
        self.editing = true;
        sender.style = UIBarButtonItemStyleDone;
        sender.title =@"Done";




    }




}




@end
