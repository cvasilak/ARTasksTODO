//
//  AGTaskViewController.m
//  ARTasksTODO
//
//  Created by Corinne Krych on 5/27/13.
//  Copyright (c) 2013 corinne Krych. All rights reserved.
//

#import "AGTaskViewController.h"
#import "AGTitleCell.h"
// Table Sections
enum AGTableSections {
    AGTableSectionTitle = 0,
    AGTableSectionDescr,
    AGTableSectionDueProjTag,
    AGTableNumSections
};

// Table Rows
enum AGTitleRows {
    AGTableSecTitleRowTitle = 0,
    AGTableSecTitleNumRows,
};

enum AGDescrRows {
    AGTableSecDescrRowDescr = 0,
    AGTableSecDescrNumRows,
};

enum AGDueProjTagRows {
    AGTableSecDueProjTagRowDue = 0,
    AGTableSecDueProjTagRowProj,
    AGTableSecDueProjTagRowTag,
    AGTableSecDueProjTagNumRows
};

@interface AGTaskViewController ()

@end

@implementation AGTaskViewController {

}

@synthesize task = _task;

- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
[self.tableView reloadData];
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
 
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)viewWillAppear:(BOOL)animated {
 	[self.tableView reloadData];
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return AGTableNumSections;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    switch (section) {
        case AGTableSectionTitle:
            return AGTableSecTitleNumRows;
        case AGTableSectionDescr:
            return AGTableSecDescrNumRows;
        case AGTableSectionDueProjTag:
            return AGTableSecDueProjTagNumRows;
        default:
            return 0;
    }
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSUInteger section = [indexPath section];
    //NSUInteger row = [indexPath row];
    
    UITableViewCell *cell;
    
    switch (section) {
        case AGTableSectionTitle: {
            AGTitleCell *titleCell = [AGTitleCell cellForTableView:tableView];
            titleCell.txtField.text = self.task[@"title"];
            cell = titleCell;
            break;
        }
        default: {
            AGTitleCell *titleCell = [AGTitleCell cellForTableView:tableView];
            titleCell.txtField.text = self.task[@"description"];
            cell = titleCell;
            break;
        }
    }
    
    return cell;
}

/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    }   
    else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath
{
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

#pragma mark - Table view delegate

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Navigation logic may go here. Create and push another view controller.
    /*
     <#DetailViewController#> *detailViewController = [[<#DetailViewController#> alloc] initWithNibName:@"<#Nib name#>" bundle:nil];
     // ...
     // Pass the selected object to the new view controller.
     [self.navigationController pushViewController:detailViewController animated:YES];
     */
}

@end
