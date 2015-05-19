//
//  Creatures.h
//  MCMS
//
//  Created by Alex Santorineos on 5/19/15.
//  Copyright (c) 2015 madApperz. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface TheMCreatures : NSObject

@property NSString* name;
@property NSString *detail;


-(instancetype)initWithName:(NSString *)nameParemeter detail:(NSString*)detailParemeter;


@end
