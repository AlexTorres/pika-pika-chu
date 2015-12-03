//
// Created by John Torres
// Copyright (c) 2015 John Torres. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@protocol PKDPokedexModuleInteractorOutputProtocol;
@protocol PKDPokedexModuleInteractorInputProtocol;
@protocol PKDPokedexModuleViewProtocol;
@protocol PKDPokedexModulePresenterProtocol;
@protocol PKDPokedexModuleLocalDataManagerInputProtocol;
@protocol PKDPokedexModuleAPIDataManagerInputProtocol;

typedef void (^PKDSuccessBlock)(id,BOOL);
typedef void (^PKDErrorBlock)(NSError*);


@class PKDPokedexModuleWireFrame;
@class PKDPokedexModuleItem;

@protocol PKDPokedexModuleViewProtocol
@required
@property (nonatomic, strong) id <PKDPokedexModulePresenterProtocol> presenter;
/**
 * Add here your methods for communication PRESENTER -> VIEWCONTROLLER
 */
-(void)reloadedPokedex:(PKDPokedexModuleItem*)moduleItem;
@end

@protocol PKDPokedexModuleWireFrameProtocol
@required
-(void)presentPKDPokedexModuleModuleFrom:(UIWindow *)window;
/**
 * Add here your methods for communication PRESENTER -> WIREFRAME
 */

- (void)pushPokemonInterface:(id)pokemon;
@end

@protocol PKDPokedexModulePresenterProtocol
@required
@property (nonatomic, weak) id <PKDPokedexModuleViewProtocol> view;
@property (nonatomic, strong) id <PKDPokedexModuleInteractorInputProtocol> interactor;
@property (nonatomic, strong) id <PKDPokedexModuleWireFrameProtocol> wireFrame;
/**
 * Add here your methods for communication VIEWCONTROLLER -> PRESENTER
 */
-(void)updatePokedex;
-(void)gotoPokemon:(id)pokemon;
@end

@protocol PKDPokedexModuleInteractorOutputProtocol
/**
 * Add here your methods for communication INTERACTOR -> PRESENTER
 */
-(void)reloadedEntries:(PKDPokedexModuleItem*)moduleItem;
@end

@protocol PKDPokedexModuleInteractorInputProtocol
@required
@property (nonatomic, weak) id <PKDPokedexModuleInteractorOutputProtocol> presenter;
@property (nonatomic, strong) id <PKDPokedexModuleAPIDataManagerInputProtocol> APIDataManager;
@property (nonatomic, strong) id <PKDPokedexModuleLocalDataManagerInputProtocol> localDataManager;
/**
 * Add here your methods for communication PRESENTER -> INTERACTOR
 */
-(void)loadEntriesFormAPI;
@end


@protocol PKDPokedexModuleDataManagerInputProtocol
/**
 * Add here your methods for communication INTERACTOR -> DATAMANAGER
 */
@end

@protocol PKDPokedexModuleAPIDataManagerInputProtocol <PKDPokedexModuleDataManagerInputProtocol>
/**
 * Add here your methods for communication INTERACTOR -> APIDATAMANAGER
 */
- (void) pokedexListFromAPISuccess:(PKDSuccessBlock)successBlock
                          failture:(PKDErrorBlock)failtureBlock;


@end

@protocol PKDPokedexModuleLocalDataManagerInputProtocol <PKDPokedexModuleDataManagerInputProtocol>
/**
 * Add here your methods for communication INTERACTOR -> LOCLDATAMANAGER
 */
@end


