//
//  ViewController.m
//  MCMS
//
//  Created by Alex Santorineos on 5/19/15.
//  Copyright (c) 2015 madApperz. All rights reserved.
//

#import "ViewController.h"
#import "ShowCreaturesViewController.h"

@interface ViewController ()<UITableViewDataSource, UITableViewDelegate>
@property (weak, nonatomic) IBOutlet UITextField *textField;
@property (weak, nonatomic) IBOutlet UITableView *tableView;
@property NSMutableArray *creatures;
//@property TheMCreatures *theCreature;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
//
//
//    TheMCreatures *alex = [[TheMCreatures alloc]init];
//    TheMCreatures *tim = [[TheMCreatures alloc]init];
//    TheMCreatures *paul = [[TheMCreatures alloc]init];
//
//    alex.name = @"alexTheLion";
//    tim.name = @"TimThe Lion";
//    paul.name =@"paul the lion";

    
//    self.creatures = [NSMutableArray arrayWithObjects:alex,tim,paul, nil];
    self.creatures = [NSMutableArray new];




}

- (IBAction)onAddButton:(id)sender {

//    TheMCreatures *theCreatures = [TheMCreatures new];
//
//    self.textField.text= theCreatures.name;

    [self.creatures addObject:self.textField.text];

    self.textField.text = @"";

    [self.textField endEditing:YES];

    [self.tableView reloadData];


}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Cell"];

//   TheMCreatures *mCreature = [self.creatures objectAtIndex:indexPath.row];

    cell.textLabel.text =[self.creatures objectAtIndex:indexPath.row];
    return cell;

}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{


    return self.creatures.count;
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{

    ShowCreaturesViewController *showVC = segue.destinationViewController;

    NSIndexPath *indexPath = [self.tableView indexPathForCell:sender];
    
    showVC.title = [self.creatures objectAtIndex:indexPath.row];



}

@end
