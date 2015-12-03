//
// Created by John Torres
// Copyright (c) 2015 John Torres. All rights reserved.
//

#import "PKDPokemonModuleView.h"
#import "PKDPokemonListModel.h"
#import "PKDPokemonModuleItem.h"


@implementation PKDPokemonModuleView

#pragma mark - ViewController Lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.title = self.pokemonListModel.name;
    [self.presenter loadPokemonWithString:self.pokemonListModel.resourceUri];
}

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
-(void)reloadPokemonInfo:(NSArray*)sections
                    rows:(NSArray*)rows
                   model:(PKDPokemonModuleItem*) itemModel {
    self.rows = rows;
    self.sections = sections;
    self.moduleItem = itemModel;
    [self.tableView reloadData];
    
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {

    return self.sections.count;
}

- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section {

    return self.sections[section];
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    NSArray *row = self.rows[section];
    
    return row.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:kPokemonPropCellID forIndexPath:indexPath];
   
    id obj = self.rows[[indexPath section]][[indexPath row]];
    if([obj isKindOfClass:[NSString class]]) {
        cell.textLabel.text = obj;
    } else if([obj isKindOfClass:[NSNumber class]]) {
        cell.textLabel.text = [obj stringValue];
    }
    return cell;
}




@end