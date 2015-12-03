//
// Created by John Torres
// Copyright (c) 2015 John Torres. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "PKDPokemonModuleProtocols.h"

@class PKDPokemonListModel;
@class PKDPokemonModuleItem;
@interface PKDPokemonModuleView : UITableViewController <PKDPokemonModuleViewProtocol>

@property (nonatomic, strong) id <PKDPokemonModulePresenterProtocol> presenter;
@property (nonatomic, strong) PKDPokemonListModel *pokemonListModel;
@property (nonatomic, strong) PKDPokemonModuleItem *moduleItem;
@property (nonatomic, strong) NSArray *sections;
@property (nonatomic, strong) NSArray *rows;

@end
