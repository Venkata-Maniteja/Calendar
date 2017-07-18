//
//  ViewController.m
//  Calendar
//
//  Created by venkata on 2017-07-18.
//  Copyright © 2017 venkata. All rights reserved.
//

#import "ViewController.h"
#import "DetailViewController.h"

#import "CalendarMonthViewController.h"
#import "CalendarDayViewController.h"


#define MONTH_GRID NSLocalizedString(@"Month Grid Calendar", @"")
#define DAY_VIEW NSLocalizedString(@"Day View Calendar", @"")

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    
    self.data = @[
                  @{@"rows" : @[DAY_VIEW,MONTH_GRID], @"title" : @"Views"},
                  ];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark UITableView Delegate & DataSource
- (NSInteger) numberOfSectionsInTableView:(UITableView *)tableView {
    return [self.data count];
}
- (NSInteger) tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [self.data[section][@"rows"] count];
}
- (UITableViewCell *) tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    static NSString *CellIdentifier = @"Cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
    }
    
    cell.textLabel.text = self.data[indexPath.section][@"rows"][indexPath.row];
    cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
    
    return cell;
}
- (void) tableView:(UITableView *)tv didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    [tv deselectRowAtIndexPath:indexPath animated:YES];
    
    UITableViewCell *cell = [tv cellForRowAtIndexPath:indexPath];
    UIViewController *vc;
    NSString *str = cell.textLabel.text;
    
    
    
    if([str isEqualToString:MONTH_GRID])
        vc = [[CalendarMonthViewController alloc] initWithSunday:YES];
    
    else if([str isEqualToString:DAY_VIEW])
        vc = CalendarDayViewController.new;
    
    
    
      
    
    if(self.detailViewController && ([str isEqualToString:MONTH_GRID] || [str isEqualToString:DAY_VIEW]))
        [self.detailViewController setupWithMainController:vc];
    else
        [self.navigationController pushViewController:vc animated:YES];
    
}
- (NSString *) tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section{
    return self.data[section][@"title"];
}
- (NSString *) tableView:(UITableView *)tableView titleForFooterInSection:(NSInteger)section{
    return self.data[section][@"footer"];
}


@end
