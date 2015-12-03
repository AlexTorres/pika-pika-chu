//
// Created by John Torres
// Copyright (c) 2015 John Torres. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "PKDPokemonListModel.h"
#import "PKDBaseModel.h"
#import "PKDEvolutionItem.h"

@interface PKDPokemonModuleItem : JSONModel

@property (assign, nonatomic) NSInteger nationalId;
@property (strong, nonatomic) NSString *created;
@property (strong, nonatomic) NSArray <PKDBaseModel> *abilities;
@property (strong, nonatomic) NSString *modified;
@property (strong, nonatomic) NSArray <PKDEvolutionItem>*evolutions;
@property (strong, nonatomic) NSArray <PKDBaseModel> *descriptions;
@property (strong, nonatomic) NSArray <PKDBaseModel> *moves;
@property (strong, nonatomic) NSArray <PKDBaseModel> *types;
@property (assign, nonatomic) NSInteger catchRate;
@property (assign, nonatomic) NSInteger hp;
@property (assign, nonatomic) NSInteger attack;
@property (assign, nonatomic) NSInteger defense;
@property (assign, nonatomic) NSInteger speed;
@property (assign, nonatomic) NSInteger height;
@property (assign, nonatomic) NSInteger weight;
@property (assign, nonatomic) NSString *maleFemaleRatio;
@property (strong, nonatomic) NSString* name;
@property (strong, nonatomic) NSString* resourceUri;

@end
