//
// Created by John Torres
// Copyright (c) 2015 John Torres. All rights reserved.
//

#import "PKDPokemonModuleWireFrame.h"

@implementation PKDPokemonModuleWireFrame

- (void)presentPKDPokemonModuleModuleFrom:(UIViewController*)fromViewController pokemonObject:(id)pokemon {
    // Generating module components
    id <PKDPokemonModuleViewProtocol> view = [self pokedexControllerFromStoryboard];
    id <PKDPokemonModulePresenterProtocol, PKDPokemonModuleInteractorOutputProtocol> presenter = [PKDPokemonModulePresenter new];
    id <PKDPokemonModuleInteractorInputProtocol> interactor = [PKDPokemonModuleInteractor new];
    id <PKDPokemonModuleAPIDataManagerInputProtocol> APIDataManager = [PKDPokemonModuleAPIDataManager new];
    id <PKDPokemonModuleLocalDataManagerInputProtocol> localDataManager = [PKDPokemonModuleLocalDataManager new];

    
    // Connecting
    view.presenter = presenter;
    presenter.view = view;
    presenter.wireFrame = self;
    presenter.interactor = interactor;
    interactor.presenter = presenter;
    interactor.APIDataManager = APIDataManager;
    interactor.localDataManager = localDataManager;
    self.pokemonView = (PKDPokemonModuleView*)view;
    self.pokemonView.pokemonListModel = pokemon;
    
    [fromViewController.navigationController pushViewController:(UIViewController*)view animated:YES];
    

}


- (PKDPokemonModuleView *)pokedexControllerFromStoryboard {
    UIStoryboard *storyboard = [self mainStoryboard];
    PKDPokemonModuleView *viewController = [storyboard instantiateViewControllerWithIdentifier:kPokemonViewID];
    
    return viewController;
}


- (UIStoryboard *)mainStoryboard {
    UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"Main"
                                                         bundle:[NSBundle mainBundle]];
    
    return storyboard;
}

@end
