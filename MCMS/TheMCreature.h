//
//  Creatures.h
//  MCMS
//
//  Created by Alex Santorineos on 5/19/15.
//  Copyright (c) 2015 madApperz. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface TheMCreature : NSObject

@property NSString* name;
@property NSString *detail;
@property NSMutableArray *accessories;
@property UIImage *image;


-(instancetype)initWithName:(NSString *)nameParemeter detail:(NSString*)detailParemeter image:(UIImage *)imageParameter accessories:(NSMutableArray *)accesories;

@end
