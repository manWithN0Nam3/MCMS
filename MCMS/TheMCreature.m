//
//  Creatures.m
//  MCMS
//
//  Created by Alex Santorineos on 5/19/15.
//  Copyright (c) 2015 madApperz. All rights reserved.
//

#import "TheMCreature.h"

@implementation TheMCreature

-(instancetype)initWithName:(NSString *)nameParemeter detail:(NSString*)detailParemeter image:(UIImage *)imageParameter accessories:(NSMutableArray *)accesories;

{
    self = [super init];

    if (self) {
        self.name = nameParemeter;
        
        self.detail = detailParemeter;
        self.image = imageParameter;
        self.accessories = accesories;
    }

    return self;
}


@end
