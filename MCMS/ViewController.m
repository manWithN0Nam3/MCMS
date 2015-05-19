//
//  ViewController.m
//  MCMS
//
//  Created by Alex Santorineos on 5/19/15.
//  Copyright (c) 2015 madApperz. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()<UITableViewDataSource, UITableViewDelegate>
@property NSMutableArray *creatures;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];


    TheMCreatures *alex = [[TheMCreatures alloc]init];
    TheMCreatures *tim = [[TheMCreatures alloc]init];
    TheMCreatures *paul = [[TheMCreatures alloc]init];

    alex.name = @"alexTheLion";
    tim.name = @"TimThe Lion";
    paul.name =@"paul the lion";

    
    self.creatures = [NSMutableArray arrayWithObjects:alex,tim,paul, nil];





}


-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Cell"];

   TheMCreatures *mCreature = [self.creatures objectAtIndex:indexPath.row];

    cell.textLabel.text = mCreature.name;
    return cell;

}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{


    return self.creatures.count;
}

@end
