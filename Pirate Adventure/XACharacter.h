//
//  XACharacter.h
//  Pirate Adventure
//
//  Created by Ximo on 13/07/14.
//  Copyright (c) 2014 Ximo Alloza. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "XAArmor.h"
#import "XAWeapon.h"

@interface XACharacter : NSObject

@property (strong, nonatomic) XAArmor *armor;
@property (strong, nonatomic) XAWeapon *weapon;
@property (nonatomic) int damage;
@property (nonatomic) int health;

@end
