//
//  Creatures.m
//  MCMS
//
//  Created by Alex Santorineos on 5/19/15.
//  Copyright (c) 2015 madApperz. All rights reserved.
//

#import "TheMCreatures.h"

@implementation TheMCreatures

-(instancetype)initWithCreatureOne:(NSString *)one andCreatureTwo:(NSString*)two andCreatureThree:(NSString *)three{

    self = [super init];

    if (self) {
        self.name = one;
//        self.name2 = two;
//        self.name3 = three;
//
    }

    return self;
}


@end
