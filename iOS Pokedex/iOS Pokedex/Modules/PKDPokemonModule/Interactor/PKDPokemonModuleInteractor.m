//
// Created by John Torres
// Copyright (c) 2015 John Torres. All rights reserved.
//

#import "PKDPokemonModuleInteractor.h"
#import "PKDPokemonModuleItem.h"

@implementation PKDPokemonModuleInteractor

-(void) loadPokemonFromApi:(NSString*)pokemonString {
    [self.APIDataManager pokemonFromString:pokemonString APISuccess:^(PKDPokemonModuleItem *response, BOOL success) {
        [self.presenter entriesFromInteractor:[[response toDictionary]allKeys] rows:[self procesedArray:response] model:response];
    } failture:^(NSError *error) {
    }];
}

-(NSArray*)procesedArray:(PKDPokemonModuleItem*)pokemonItem {
    NSArray * sections = [[pokemonItem toDictionary]allKeys];
    NSMutableArray *valuesForKeys = [NSMutableArray array];
    [sections enumerateObjectsUsingBlock:^(NSString *key, NSUInteger idx, BOOL * stop) {
        id obj = [pokemonItem valueForKey:[key camelCased]];
        if([key isEqualToString:@"evolutions"]){
             [valuesForKeys addObject: [obj valueForKey:@"to"]];
        } else {
            if([obj isKindOfClass:[NSString class]]||[obj isKindOfClass:[NSNumber class]]) {
                [valuesForKeys addObject:@[obj]];
            }
            else if([obj isKindOfClass:[NSArray class]]) {
                [valuesForKeys addObject: [obj valueForKey:@"name"]];
            }
        }
    }];
    
    return valuesForKeys;
}

@end