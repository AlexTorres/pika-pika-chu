//
//  Constants.h
//  iOS Pokedex
//
//  Created by iOS Development on 12/1/15.
//  Copyright © 2015 Test. All rights reserved.
//

#import <Foundation/Foundation.h>

extern NSString *const kConfigurationKey;
extern NSString *const kAPIKey;
extern NSString *const kVersionKey;
extern NSString *const kPokedexPath;
extern NSString *const kPokedexViewID;
extern NSString *const kPokemonListCellID;
extern NSString *const kPokemonViewID;
extern NSString *const kPokemonPropCellID;


typedef void (^PKDSuccessBlock)(id,BOOL);
typedef void (^PKDErrorBlock)(NSError*);
