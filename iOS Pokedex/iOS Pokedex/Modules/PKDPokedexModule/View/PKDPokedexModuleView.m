//
// Created by John Torres
// Copyright (c) 2015 John Torres. All rights reserved.
//

#import "PKDPokedexModuleView.h"
#import "PKDPokedexModuleItem.h"
#import "PKDPokemonListModel.h"
#import "PKDPokedexTableViewCell.h"

@implementation PKDPokedexModuleView

#pragma mark - ViewController Lifecycle


- (void)viewDidDisappear:(BOOL)animated
{
    [super viewDidDisappear:animated];
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
}

- (void)viewWillDisappear:(BOOL)animated
{
    [super viewWillDisappear:animated];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.presenter updatePokedex];
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)reloadedPokedex:(PKDPokedexModuleItem *)moduleItem {
    self.pokedexModel = moduleItem;
    [self.tableView reloadData];
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {

    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    
    return self.pokedexModel.pokemon.count;
}


 - (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
     PKDPokedexTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:kPokemonListCellID forIndexPath:indexPath];
     [cell configureForPokemon:self.pokedexModel.pokemon[[indexPath row]]];
     
     return cell;
     
 }

-(void) tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    [self.presenter gotoPokemon:self.pokedexModel.pokemon[[indexPath row]]];
}




@end