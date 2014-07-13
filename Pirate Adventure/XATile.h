//
//  XATile.h
//  Pirate Adventure
//
//  Created by Ximo on 07/07/14.
//  Copyright (c) 2014 Ximo Alloza. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "XAWeapon.h"
#import "XAArmor.h"

@interface XATile : NSObject

@property (strong, nonatomic) NSString *story;
@property (strong, nonatomic) UIImage *backgroundImage;
@property (strong, nonatomic) NSString *actionButtonName;
@property (strong, nonatomic) XAWeapon *weapon;
@property (strong, nonatomic) XAArmor *armor;
@property (nonatomic) int healthEffect;

@end
