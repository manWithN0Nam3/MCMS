//
//  ShowCreaturesViewController.m
//  MCMS
//
//  Created by Alex Santorineos on 5/19/15.
//  Copyright (c) 2015 madApperz. All rights reserved.
//

#import "ShowCreaturesViewController.h"

@interface ShowCreaturesViewController ()

@property (weak, nonatomic) IBOutlet UITextField *editCreatureTextField;

@end

@implementation ShowCreaturesViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    self.editing = FALSE;

}

- (IBAction)onEditButtonTapped:(UIButton *)sender {


    if (self.editing == true) {
        sender.title = @"Edit";
        self.editing = false;
    }
    else {
        sender.title = @"Done"
        self.editing = true;
    }

}

//    if ([sender.title isEqual:@"Edit"]) {
//        sender.title = @"Done";
//    }
//    else if ([sender.title isEqual:@"Done"]) {
//        sender.title = @"Edit";
//    }



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
