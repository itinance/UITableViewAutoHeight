//
//  ExampleTableViewController.m
//  TableAutoHeight
//
//  Created by Hagen Hübel on 28/04/15.
//  2015 ITinance GmbH.
//

#import "ExampleTableViewController.h"
#import "ExampleTableViewCell.h"
#import "Database.h"

@interface ExampleTableViewController ()

@property (nonatomic, strong) Database* database;

@end

@implementation ExampleTableViewController



- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    self.database = [[Database alloc] init];
    
    
    self.tableView.delegate = self;
    self.tableView.dataSource = self;
    
    self.tableView.rowHeight = UITableViewAutomaticDimension;
    self.tableView.estimatedRowHeight = 50.0;
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.database.items.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    ExampleTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell" forIndexPath:indexPath];

    Item* item = [self.database.items objectAtIndex:indexPath.row];
    cell.title.text = item.title;
    cell.details.text = item.details;
    cell.details.numberOfLines = 0;
    
    return cell;
}


@end
