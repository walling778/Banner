//
//  ViewController.m
//  Banner
//
//  Created by William Brady Alling on 6/7/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end



@implementation ViewController


- (NSInteger)numberOfSectionsInTableView:(UITableView *)aTableView
{
    
    return 1;
    
}

- (NSInteger)tableView:(UITableView *)aTableView numberOfRowsInSection:(NSInteger)section 
{
    return 5;
}

- (NSString *)tableView:(UITableView *)aTableView titleForHeaderInSection:(NSInteger)section
{
    NSString *title = @"";
    return title;
    
}

- (UITableViewCell *)cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"Cell";
    
    UITableViewCell *cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleValue1 reuseIdentifier:CellIdentifier];
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
    }
    
    [self configureCell:cell atIndexPath:indexPath];
    return cell;
}




- (void)configureCell:(UITableViewCell *)cell atIndexPath:(NSIndexPath *)indexPath 

{
    label.layer.borderWidth = 1.0;
    CGRect frame = cell.frame;
    frame.size.width -= frame.size.width/2;
    label.frame = frame;
    cell.textLabel.text = @"";
    [cell addSubview:label];
}


- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath 
{
    
}

-(float)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section 
{
    return 0.0;
}





- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return YES;
}

@end
