//
//  ViewController.m
//  MCMS
//
//  Created by Alex Santorineos on 5/19/15.
//  Copyright (c) 2015 madApperz. All rights reserved.
//

#import "ViewController.h"
#import "ShowCreaturesViewController.h"
#import "TheMCreature.h"

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


    TheMCreature *m1 = [[TheMCreature alloc]initWithName:@"alex" detail:@"hello"image:[UIImage imageNamed:@"Green-Grass.jpg"]accessories:[NSMutableArray arrayWithObjects:@"sings",@"hwhat", @"who", nil]];
    TheMCreature *m2 = [[TheMCreature alloc]initWithName:@"tim" detail:@"bye" image:[UIImage imageNamed:@"paul"]accessories:[NSMutableArray arrayWithObjects:@"sings",@"alex",@"random strings of useless words", nil]];

    self.creatures = [[NSMutableArray alloc]initWithObjects:m1,m2, nil];
//    self.creatureDetails = [NSMutableArray new];
    

}

- (IBAction)onAddButton:(id)sender {
    TheMCreature *ccc = [[TheMCreature alloc]initWithName:self.textField.text detail:self.textField2.text image:[UIImage imageNamed:nil]accessories:nil];

    [self.creatures addObject:ccc];

    self.textField.text = @"";
    self.textField2.text = @"";

    [self.textField endEditing:YES];
    [self.textField2 endEditing:YES];

    [self.tableView reloadData];


}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{

    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Cell"];

    TheMCreature *creature =[self.creatures objectAtIndex:indexPath.row];

    //why does this happen
//    creature.name = @"what";
    cell.textLabel.text = creature.name;
    NSLog(@"%@",creature.name);
    cell.detailTextLabel.text = creature.detail;

    return cell;

}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{


    return self.creatures.count;
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{

    ShowCreaturesViewController *showVC = segue.destinationViewController;

    NSIndexPath *indexPath = [self.tableView indexPathForCell:sender];

    TheMCreature *creature = [self.creatures objectAtIndex:indexPath.row];



    showVC.name = creature.name;
    showVC.detail = creature.detail;
    showVC.image = creature.image;
    showVC.accesories = creature.accessories;
    

//    self.indexPath = indexPath.row;


}


-(IBAction)unwind:(UIStoryboardSegue *)segue{




    
}
@end
