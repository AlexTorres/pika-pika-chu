//
// Created by John Torres
// Copyright (c) 2015 John Torres. All rights reserved.
//

#import "PKDPokedexModuleWireFrame.h"
#import "PKDRootWireFrame.h"

@implementation PKDPokedexModuleWireFrame

- (void)presentPKDPokedexModuleModuleFrom:(UIWindow *)window
{
    // Generating module components
    id <PKDPokedexModuleViewProtocol> view = [self pokedexControllerFromStoryboard] ;
    id <PKDPokedexModulePresenterProtocol, PKDPokedexModuleInteractorOutputProtocol> presenter = [PKDPokedexModulePresenter new];
    id <PKDPokedexModuleInteractorInputProtocol> interactor = [PKDPokedexModuleInteractor new];
    id <PKDPokedexModuleAPIDataManagerInputProtocol> APIDataManager = [PKDPokedexModuleAPIDataManager new];
    id <PKDPokedexModuleLocalDataManagerInputProtocol> localDataManager = [PKDPokedexModuleLocalDataManager new];
    
    id <PKDPokemonModuleWireFrameProtocol> pokemonWireFrame = [PKDPokemonModuleWireFrame new];
    
    // Connecting
    view.presenter = presenter;
    presenter.view = view;
    presenter.wireFrame = (PKDPokedexModuleWireFrame*)self;
    presenter.interactor = interactor;
    interactor.presenter = presenter;
    interactor.APIDataManager = APIDataManager;
    interactor.localDataManager = localDataManager;
    
    self.pokemonWireFrame = (PKDPokemonModuleWireFrame*) pokemonWireFrame;
    
    self.pokedexView = (PKDPokedexModuleView*)view;
    
    [self.rootWireframe showRootViewController:(PKDPokedexModuleView*)view
                                      inWindow:window];
    
    //TOODO - New view controller presentation (present, push, pop, .. )
}

- (void)pushPokemonInterface:(id)pokemon
{
    [self.pokemonWireFrame presentPKDPokemonModuleModuleFrom:self.pokedexView pokemonObject:pokemon];
}


- (PKDPokedexModuleView *)pokedexControllerFromStoryboard
{
    UIStoryboard *storyboard = [self mainStoryboard];
    PKDPokedexModuleView *viewController = [storyboard instantiateViewControllerWithIdentifier:kPokedexViewID];
    
    return viewController;
}


- (UIStoryboard *)mainStoryboard
{
    UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"Main"
                                                         bundle:[NSBundle mainBundle]];
    
    return storyboard;
}

@end
