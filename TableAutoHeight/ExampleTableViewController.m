//
//  ExampleTableViewController.m
//  TableAutoHeight
//
//  Created by Hagen Hübel on 28/04/15.
//  2015 ITinance GmbH.
//

#import "ExampleTableViewController.h"
#import "ExampleTableViewCell.h"
#import "Item.h"

@interface ExampleTableViewController ()

@property (nonatomic, strong) NSMutableArray* items;

@end

@implementation ExampleTableViewController

@synthesize items;

- (void)viewDidLoad {
    [super viewDidLoad];
    
    items = [[NSMutableArray alloc] init];
    
    [items addObject:[Item itemWithTitle:@"First Item" andDetails:@"Lorem ipsum dolor sit amet, consetetur "]];
    [items addObject:[Item itemWithTitle:@"Second Item" andDetails:@"Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquy"]];
    [items addObject:[Item itemWithTitle:@"Third Item" andDetails:@"Lorem ipsum dolor sit amet, consetetur sadipscing elitr"]];
    
    
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
    return items.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    ExampleTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell" forIndexPath:indexPath];

    Item* item = [items objectAtIndex:indexPath.row];
    cell.title.text = item.title;
    cell.details.text = item.details;
    cell.details.numberOfLines = 0;
    
    return cell;
}


@end
