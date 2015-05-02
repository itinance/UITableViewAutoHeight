//
//  Example2TableViewController.m
//  TableAutoHeight
//
//  Created by Hagen Hübel on 02.05.15.
//  Copyright (c) 2015 ITinance GmbH. All rights reserved.
//

#import "Example2TableViewController.h"
#import "Example2TableViewCell.h"
#import "Database.h"

@interface Example2TableViewController ()

@property (nonatomic, strong) Database* database;

@end

@implementation Example2TableViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    self.database = [[Database alloc] init];
    
    self.tableView.dataSource = self;
    self.tableView.delegate = self;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    
    NSLog(@"%lu", (unsigned long)self.database.items.count);
    
    return self.database.items.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    Example2TableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell2" forIndexPath:indexPath];
    
    Item* item = [self.database.items objectAtIndex:indexPath.row];
    
    cell.lblTitle.text = item.title;
    cell.lblSubtitle.text = item.title;
    cell.lblDetails.text = item.details;
    
    cell.lblDetails.numberOfLines = 0;
    
    return cell;
}



@end
