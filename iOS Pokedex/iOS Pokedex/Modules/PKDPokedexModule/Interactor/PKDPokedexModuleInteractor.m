//
// Created by John Torres
// Copyright (c) 2015 John Torres. All rights reserved.
//

#import "PKDPokedexModuleInteractor.h"
#import "PKDPokedexModuleItem.h"

@implementation PKDPokedexModuleInteractor

-(void)loadEntriesFormAPI {
    [self.APIDataManager pokedexListFromAPISuccess:^(PKDPokedexModuleItem *response, BOOL success) {
        [self.presenter reloadedEntries:response];
    } failture:^(NSError * error) {
        NSLog(@"meh");
    }];
}

@end