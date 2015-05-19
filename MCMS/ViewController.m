//
//  ViewController.m
//  MCMS
//
//  Created by Alex Santorineos on 5/19/15.
//  Copyright (c) 2015 madApperz. All rights reserved.
//

#import "ViewController.h"
#import "ShowCreaturesViewController.h"
#import "TheMCreatures.h"

@interface ViewController ()<UITableViewDataSource, UITableViewDelegate>
@property (weak, nonatomic) IBOutlet UITextField *textField;
@property (weak, nonatomic) IBOutlet UITextField *textField2;
@property (weak, nonatomic) IBOutlet UITableView *tableView;


//@property TheMCreatures *theCreature;
@end

@implementation ViewController

-(void)viewDidAppear:(BOOL)animated{

    [self.tableView reloadData];

}
- (void)viewDidLoad {
    [super viewDidLoad];


    TheMCreatures *m1 = [[TheMCreatures alloc]initWithName:@"alex" detail:@"hello"];

    self.creatures = [[NSMutableArray alloc]initWithObjects:m1, nil];
//    self.creatureDetails = [NSMutableArray new];
    

}

- (IBAction)onAddButton:(id)sender {
    TheMCreatures *creature = [[TheMCreatures alloc]initWithName:self.textField.text detail:self.textField2.text];
    [self.creatures addObject:creature];


    self.textField.text = @"";
    self.textField2.text = @"";

    [self.textField endEditing:YES];
    [self.textField2 endEditing:YES];

    [self.tableView reloadData];


}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{

    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Cell"];

//   TheMCreatures *mCreature = [self.creatures objectAtIndex:indexPath.row];
    TheMCreatures *creature =[self.creatures objectAtIndex:indexPath.row];

    cell.textLabel.text = creature.name;
    cell.detailTextLabel.text = creature.detail;
    return cell;

}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{


    return self.creatures.count;
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{

    ShowCreaturesViewController *showVC = segue.destinationViewController;

    NSIndexPath *indexPath = [self.tableView indexPathForCell:sender];
    TheMCreatures *creature = [self.creatures objectAtIndex:indexPath.row];
    
    showVC.name = creature.name;
    showVC.detail = creature.detail;

    self.indexPath = indexPath.row;


}


-(IBAction)unwind:(UIStoryboardSegue *)segue{




    
}
@end
