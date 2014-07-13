//
//  XAFactory.m
//  Pirate Adventure
//
//  Created by Ximo on 07/07/14.
//  Copyright (c) 2014 Ximo Alloza. All rights reserved.
//

#import "XAFactory.h"
#import "XATile.h"

@implementation XAFactory

-(NSArray *)tiles
{
    // 0 0
    XATile *tile1 = [[XATile alloc] init];
    tile1.story = @"Captain, we need a fearless leader suchs as yoursel to undetake a voyages. Would you like a blunted sword";
    tile1.backgroundImage = [UIImage imageNamed:@"PirateStart.jpg"];
    XAWeapon *bluntedSword = [[XAWeapon alloc] init];
    bluntedSword.name = @"Blunted sword";
    bluntedSword.damage = 12;
    tile1.weapon = bluntedSword;
    tile1.actionButtonName = @"Take the sword";
    
    // 0 1
    XATile *tile2 = [[XATile alloc] init];
    tile2.story = @"Would you like to upgrade your armor to steel ...";
    tile2.backgroundImage = [UIImage imageNamed:@"PirateBlacksmith.jpeg"];
    XAArmor *steelArmor = [[XAArmor  alloc] init];
    steelArmor.name = @"Steel armor";
    steelArmor.health = 8;
    tile2.armor = steelArmor;
    tile2.actionButtonName = @"Take armor";
    
    // 0 2
    XATile *tile3 = [[XATile alloc] init];
    tile3.story = @"A mysterious dock appears on the horizon. Should we stop and ask for directions?";
    tile3.backgroundImage = [UIImage imageNamed:@"PirateFriendlyDock.jpg"];
    tile3.healthEffect = 12;
    tile3.actionButtonName = @"Stop at the dock";
    
    NSMutableArray *firstColumn = [[NSMutableArray alloc] init];
    [firstColumn addObject:tile1];
    [firstColumn addObject:tile2];
    [firstColumn addObject:tile3];
    
    // 1 0
    XATile *tile4 = [[XATile alloc] init];
    tile4.story = @"You have found a parrot. This can be used in your armor slot. Parrots are a great defender";
    tile4.backgroundImage = [UIImage imageNamed:@"PirateParrot.jpg"];
    XAArmor *parrotArmor = [[XAArmor alloc] init];
    parrotArmor.health = 20;
    parrotArmor.name = @"Parrot";
    tile4.actionButtonName = @"Adopt Parrot";
    
    // 1 1
    XATile *tile5 = [[XATile alloc] init];
    tile5.story = @"bla bla bla blab";
    tile5.backgroundImage = [UIImage imageNamed:@"PirateWeapons.jpeg"];
    XAWeapon *pistolWeapon = [[XAWeapon alloc] init];
    pistolWeapon.name = @"Pistol";
    pistolWeapon.damage = 17;
    tile5.actionButtonName = @"Use pistol";
    
    // 1 2
    XATile *tile6 = [[XATile alloc] init];
    tile6.story = @"story 6";
    tile6.backgroundImage = [UIImage imageNamed:@"PiratePlank.jpg"];
    tile6.healthEffect = -22;
    tile6.actionButtonName = @"Show no fear";
    
    NSMutableArray *secondColumn = [[NSMutableArray alloc] init];
    [secondColumn addObject:tile4];
    [secondColumn addObject:tile5];
    [secondColumn addObject:tile6];

    // 2 0
    XATile *tile7 = [[XATile alloc] init];
    tile7.story = @"story 7";
    tile7.backgroundImage = [UIImage imageNamed:@"PirateShipBattle.jpeg"];
    tile7.healthEffect = 8;
    tile7.actionButtonName = @"Figth those scum";
    
    XATile *tile8 = [[XATile alloc] init];
    tile8.story = @"story 8";
    tile8.backgroundImage = [UIImage imageNamed:@"PirateOctopusAttack.jpg"];
    tile8.healthEffect = -46;
    tile8.actionButtonName = @"Abandon ship";
    
    XATile *tile9 = [[XATile alloc] init];
    tile9.story = @"story 9";
    tile9.backgroundImage = [UIImage imageNamed:@"PirateTreasure.jpeg"];
    tile9.healthEffect = 20;
    tile9.actionButtonName = @"Take treasure";
    
    NSMutableArray *thirdColumn = [[NSMutableArray alloc] init];
    [thirdColumn addObject:tile7];
    [thirdColumn addObject:tile8];
    [thirdColumn addObject:tile9];

    // 3 0
    XATile *tile10 = [[XATile alloc] init];
    tile10.story = @"story 10";
    tile10.backgroundImage = [UIImage imageNamed:@"PirateAttack.jpg"];
    tile10.healthEffect = -15;
    tile10.actionButtonName = @"Repel the invaders";
    
    XATile *tile11 = [[XATile alloc] init];
    tile11.story = @"story 11";
    tile11.backgroundImage = [UIImage imageNamed:@"PirateTreasurer2.jpeg"];
    tile11.healthEffect = -7;
    tile11.actionButtonName = @"Swim deeper";
    
    XATile *tile12 = [[XATile alloc] init];
    tile12.story = @"Your final faceoff with the fearsome";
    tile12.backgroundImage = [UIImage imageNamed:@"PirateBoss.jpeg"];
    tile12.healthEffect = -15;
    tile12.actionButtonName = @"Fight!";
    
    NSMutableArray *fourthColumn = [[NSMutableArray alloc] init];
    [fourthColumn addObject:tile10];
    [fourthColumn addObject:tile11];
    [fourthColumn addObject:tile12];
    
    NSArray *tiles = [[NSArray alloc] initWithObjects:firstColumn, secondColumn, thirdColumn, fourthColumn, nil];
    
    return tiles;
}

-(XACharacter *)character
{
    XACharacter *character = [[XACharacter alloc] init];
    character.health = 100;
    XAArmor *armor = [[XAArmor alloc] init];
    armor.name = @"Cloak";
    armor.health = 5;
    character.armor = armor;
    
    XAWeapon *weapon = [[XAWeapon alloc] init];
    weapon.name = @"Fists";
    character.weapon = weapon;
    
    return character;
}

-(XABoss *)boss
{
    XABoss *boss = [[XABoss alloc] init];
    boss.health = 65;
    return boss;
}

@end
