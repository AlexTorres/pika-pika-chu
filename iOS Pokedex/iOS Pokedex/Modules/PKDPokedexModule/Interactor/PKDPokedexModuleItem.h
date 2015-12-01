//
// Created by John Torres
// Copyright (c) 2015 John Torres. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "PKDPokemonListModel.h"

@interface PKDPokedexModuleItem : JSONModel
@property (nonatomic,strong) NSArray<PKDPokemonListModel> *pokemon;
@end
