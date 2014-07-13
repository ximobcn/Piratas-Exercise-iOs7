//
//  XAFactory.h
//  Pirate Adventure
//
//  Created by Ximo on 07/07/14.
//  Copyright (c) 2014 Ximo Alloza. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "XACharacter.h"
#import "XABoss.h";

@interface XAFactory : NSObject

-(NSArray *)tiles;
-(XACharacter *)character;
-(XABoss *)boss;

@end
