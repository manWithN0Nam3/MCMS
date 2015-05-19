//
//  Creatures.m
//  MCMS
//
//  Created by Alex Santorineos on 5/19/15.
//  Copyright (c) 2015 madApperz. All rights reserved.
//

#import "TheMCreatures.h"

@implementation TheMCreatures

-(instancetype)initWithName:(NSString *)nameParemeter detail:(NSString*)detailParemeter;

{
    self = [super init];

    if (self) {
        self.name =nameParemeter;
        
        self.detail = detailParemeter;
    }

    return self;
}


@end
