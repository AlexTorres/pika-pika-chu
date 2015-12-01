//
// Created by John Torres
// Copyright (c) 2015 John Torres. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "PKDPokedexModuleProtocols.h"

@interface PKDPokedexModuleView : UITableViewController <PKDPokedexModuleViewProtocol>

@property (nonatomic, strong) id <PKDPokedexModulePresenterProtocol> presenter;
@property (nonatomic, strong)  PKDPokedexModuleItem *pokedexModel;

@end
