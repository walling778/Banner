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

@synthesize patientArray;

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    NSLog(@"count is %d",self.patientArray.count);
    return self.patientArray.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"Cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    
    if (cell == nil) 
    {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
    }
    
    [self configureCell:cell atIndexPath:indexPath];
    
    return cell;
}

- (void)configureCell:(UITableViewCell *)cell atIndexPath:(NSIndexPath *)indexPath 

{
    cell.textLabel.text = [self.patientArray objectAtIndex:indexPath.row];
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath 
{
    firstNameField.text = @"(first)";
    lastNameField.text = @"(last)";
    bannerIDField.text = @"782652";
    hospitalField.text = @"Banner";
    physicianField.text = @"House";
}


-(void)adjustForLandscape
{
    NSLog(@"Adjusting for landscape");
    CGRect toolbar1Frame = CGRectMake(0.0, 0.0, 424.0, 44.0);
    toolbar1.frame = toolbar1Frame;
    
    CGRect toolbar2Frame = CGRectMake(423.0, 0.0, 602.0, 44.0);
    toolbar2.frame = toolbar2Frame;
    
    CGRect viewFrame = CGRectMake(531.0, 68.0, 384.0, 502.0);
    flexView.frame = viewFrame;
    
    CGRect tableFrame = CGRectMake(0.0, 42.0, 424.0, 706.0);
    patientTable.frame = tableFrame;
}

-(void)adjustForPortrait
{
    NSLog(@"Adjusting for portrait");

    CGRect toolbar1Frame = CGRectMake(0.0, 0.0, 320.0, 44.0);
    toolbar1.frame = toolbar1Frame;
    
    CGRect toolbar2Frame = CGRectMake(319.0, 0.0, 449.0, 44.0);
    toolbar2.frame = toolbar2Frame;
    
    CGRect viewFrame = CGRectMake(351.0, 77.0, 384.0, 502.0);
    flexView.frame = viewFrame;
    
    CGRect tableFrame = CGRectMake(0.0, 43.0, 320.0, 1055.0);
    patientTable.frame = tableFrame;
    
    
}


- (void)viewDidLoad
{
    [super viewDidLoad];
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
    self.patientArray = [[NSMutableArray alloc] init];
    NSArray *array = [[NSArray alloc] initWithObjects:@"Washington, George", @"Adams, John", @"Jefferson, Thomas", @"Madison, James", @"Monroe, James", @"Adams, John Quincy", @"Jackson, Andrew", nil];
    [self.patientArray addObjectsFromArray:array];
    patientTable.layer.borderWidth = 1.0;
    toolbar1.layer.borderWidth = 1.0;
    toolbar2.layer.borderWidth = 1.0;
    
    BOOL isPortrait = UIDeviceOrientationIsPortrait(self.interfaceOrientation);
    
    if (isPortrait == NO) 
    {
        [self adjustForLandscape];
    }

    
}


- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return YES;
    

    if (interfaceOrientation == UIDeviceOrientationLandscapeLeft || interfaceOrientation == UIDeviceOrientationLandscapeRight) 
    {
        [self adjustForLandscape];
    }
    else 
    {
        [self adjustForPortrait];
    }
}

- (void)willAnimateRotationToInterfaceOrientation:
(UIInterfaceOrientation)toInterfaceOrientation duration:(NSTimeInterval)duration
{
    if (toInterfaceOrientation == UIDeviceOrientationLandscapeLeft || toInterfaceOrientation == UIDeviceOrientationLandscapeRight) 
    {
        [self adjustForLandscape];
    }
    else 
    {
        [self adjustForPortrait];
    }
}

@end
