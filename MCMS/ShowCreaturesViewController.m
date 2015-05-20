//
//  ShowCreaturesViewController.m
//  MCMS
//
//  Created by Alex Santorineos on 5/19/15.
//  Copyright (c) 2015 madApperz. All rights reserved.
//

#import "ShowCreaturesViewController.h"
#import "ViewController.h"
#import "TheMCreature.h"

@interface ShowCreaturesViewController ()<UITextFieldDelegate, UITableViewDataSource, UITableViewDelegate>

@property (weak, nonatomic) IBOutlet UITextField *titleTextField;
@property (weak, nonatomic) IBOutlet UILabel *titleTextLabel;
@property (weak, nonatomic) IBOutlet UILabel *detailLabel;
@property (weak, nonatomic) IBOutlet UITextField *detailTextField;
@property (weak, nonatomic) IBOutlet UITableView *tableView;
@property (weak, nonatomic) IBOutlet UIImageView *imageView;



@end

@implementation ShowCreaturesViewController


-(void)viewDidDisappear:(BOOL)animated{



}

- (void)viewDidLoad {
    [super viewDidLoad];

//    self.accesories = [NSMutableArray new];

    [self.titleTextField setHidden:YES];
    [self.detailTextField setHidden:YES];

    self.imageView.image = self.image;
    self.titleTextLabel.text = self.name;
    self.titleTextField.text = self.name;

    self.detailTextField.text = self.detail;
    self.detailLabel.text = self.detail;

    self.editing = false;

}
- (IBAction)barButtonItem:(UIBarButtonItem *)sender {

    if ([sender.title isEqualToString:@"edit"]) {

        sender.style = UIBarButtonItemStyleDone;
        sender.title =@"Done";

        
        [self.titleTextField setHidden:NO];
        [self.detailTextField setHidden:NO];

        [self.titleTextLabel setHidden:YES];
        [self.detailLabel setHidden:YES];

//
//        ViewController *vc = [ViewController new];
//        [vc.creatures replaceObjectAtIndex:<#(NSUInteger)#> withObject:self.]

//        ViewController* vc = [ViewController new];
//        TheMCreatures *creature = [[TheMCreatures alloc]initWithName:self.titleTextField.text detail:self.detailTextField.text];
//        [vc.creatures insertObject:creature atIndex:<#(NSUInteger)#>:creature];



    } else if([sender.title isEqualToString:@"Done"]){



        sender.style = UIBarButtonItemStylePlain;
        sender.title =@"edit";
        [self.detailTextField setHidden:YES];
        [self.titleTextField setHidden:YES];


        [self.titleTextLabel setHidden:NO];
        [self.detailLabel  setHidden:NO];



        self.titleTextLabel.text = self.titleTextField.text;

        self.name =self.titleTextField.text;

        self.title = self.name;
        self.detailLabel.text = self.detailTextField.text;


        [self.titleTextField resignFirstResponder];
        [self.detailTextField resignFirstResponder];

    }




}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{

    return self.accesories.count;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{

    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Cell2"];
    cell.textLabel.text = [self.accesories objectAtIndex:indexPath.row];

    return cell;
}



@end
