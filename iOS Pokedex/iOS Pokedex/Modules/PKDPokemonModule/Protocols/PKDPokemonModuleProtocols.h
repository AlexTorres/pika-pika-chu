//
// Created by John Torres
// Copyright (c) 2015 John Torres. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

typedef void (^PKDSuccessBlock)(id,BOOL);
typedef void (^PKDErrorBlock)(NSError*);

@protocol PKDPokemonModuleInteractorOutputProtocol;
@protocol PKDPokemonModuleInteractorInputProtocol;
@protocol PKDPokemonModuleViewProtocol;
@protocol PKDPokemonModulePresenterProtocol;
@protocol PKDPokemonModuleLocalDataManagerInputProtocol;
@protocol PKDPokemonModuleAPIDataManagerInputProtocol;


@class PKDPokemonModuleWireFrame;
@class PKDPokemonModuleItem;

@protocol PKDPokemonModuleViewProtocol
@required
@property (nonatomic, strong) id <PKDPokemonModulePresenterProtocol> presenter;
/**
 * Add here your methods for communication PRESENTER -> VIEWCONTROLLER
 */
-(void)reloadPokemonInfo:(NSArray*)sections
                    rows:(NSArray*)rows
                       model:(PKDPokemonModuleItem*) itemModel;
@end

@protocol PKDPokemonModuleWireFrameProtocol
@required
- (void)presentPKDPokemonModuleModuleFrom:(id)fromView pokemonObject:(id)pokemon;
/**
 * Add here your methods for communication PRESENTER -> WIREFRAME
 */
@end

@protocol PKDPokemonModulePresenterProtocol
@required
@property (nonatomic, weak) id <PKDPokemonModuleViewProtocol> view;
@property (nonatomic, strong) id <PKDPokemonModuleInteractorInputProtocol> interactor;
@property (nonatomic, strong) id <PKDPokemonModuleWireFrameProtocol> wireFrame;
/**
 * Add here your methods for communication VIEWCONTROLLER -> PRESENTER
 */
-(void) loadPokemonWithString:(NSString*)pokemonString;
@end

@protocol PKDPokemonModuleInteractorOutputProtocol
/**
 * Add here your methods for communication INTERACTOR -> PRESENTER

 */
-(void)entriesFromInteractor:(NSArray*)sections
                        rows:(NSArray*)rows
                       model:(PKDPokemonModuleItem*) itemModel;
@end

@protocol PKDPokemonModuleInteractorInputProtocol
@required
@property (nonatomic, weak) id <PKDPokemonModuleInteractorOutputProtocol> presenter;
@property (nonatomic, strong) id <PKDPokemonModuleAPIDataManagerInputProtocol> APIDataManager;
@property (nonatomic, strong) id <PKDPokemonModuleLocalDataManagerInputProtocol> localDataManager;
/**
 * Add here your methods for communication PRESENTER -> INTERACTOR
 */
-(void) loadPokemonFromApi:(NSString*)pokemonString;
@end


@protocol PKDPokemonModuleDataManagerInputProtocol
/**
 * Add here your methods for communication INTERACTOR -> DATAMANAGER
 */
@end

@protocol PKDPokemonModuleAPIDataManagerInputProtocol <PKDPokemonModuleDataManagerInputProtocol>
/**
 * Add here your methods for communication INTERACTOR -> APIDATAMANAGER
 */

- (void) pokemonFromString:(NSString*)pokemonURI
                APISuccess:(PKDSuccessBlock)successBlock
                  failture:(PKDErrorBlock)failtureBlock;
@end

@protocol PKDPokemonModuleLocalDataManagerInputProtocol <PKDPokemonModuleDataManagerInputProtocol>
/**
 * Add here your methods for communication INTERACTOR -> LOCLDATAMANAGER
 */

@end


