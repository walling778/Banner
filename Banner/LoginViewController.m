//
//  LoginViewController.m
//  Banner
//
//  Created by User User on 6/9/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "LoginViewController.h"

@interface LoginViewController ()

@end

@implementation LoginViewController

@synthesize userArray;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    NSLog(@"count is %d",self.userArray.count);
    return self.userArray.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"Cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    
    if (cell == nil) 
    {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleValue1 reuseIdentifier:CellIdentifier];
    }
    
    [self configureCell:cell atIndexPath:indexPath];
    
    return cell;
}

- (void)configureCell:(UITableViewCell *)cell atIndexPath:(NSIndexPath *)indexPath 

{
    cell.textLabel.text = [self.userArray objectAtIndex:indexPath.row];
    if (indexPath.row == 0) 
    {
        cell.detailTextLabel.text = @"admin";
    }
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.userArray = [[NSMutableArray alloc] init];
    NSArray *array = [[NSArray alloc] initWithObjects:@"Kleim, Jeff", @"Fulton, Ira", nil];
    [self.userArray addObjectsFromArray:array];

}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

-(void)adjustForLandscape
{
    NSLog(@"Adjusting for landscape");
    CGRect titleFrame = CGRectMake(144.0, -26.0, 682.0, 380.0);
    titleImage.frame = titleFrame;
    
    CGRect backgroundFrame = CGRectMake(0.0, 0.0, 1024, 748);
    background.frame = backgroundFrame;
    
    CGRect tableFrame = CGRectMake(62.0, 280.0, 558.0, 175.0);
    userTable.frame = tableFrame;
    
    CGRect nextButtonFrame = CGRectMake(807.0, 418.0, 85.0, 31.0);
    nextButton.frame = nextButtonFrame;
    
    CGRect passLabelFrame = CGRectMake(707.0, 363.0, 82.0, 41.0);
    passwordLabel.frame = passLabelFrame;
    
    CGRect passFieldFrame = CGRectMake(795.0, 370.0, 97.0, 31.0);
    passField.frame = passFieldFrame;
    
    

}

-(void)adjustForPortrait
{
    NSLog(@"Adjusting for portrait");
    
    CGRect titleFrame = CGRectMake(45.0, -18.0, 682.0, 380.0);
    titleImage.frame = titleFrame;
    
    CGRect backgroundFrame = CGRectMake(0.0, 0.0, 768, 1004);
    background.frame = backgroundFrame;
    
    CGRect tableFrame = CGRectMake(87.0, 389.0, 302.0, 401.0);
    userTable.frame = tableFrame;
    
    CGRect nextButtonFrame = CGRectMake(567.0, 685.0, 85.0, 37.0);
    nextButton.frame = nextButtonFrame;
    
    CGRect passLabelFrame = CGRectMake(465.0, 630.0, 82.0, 41.0);
    passwordLabel.frame = passLabelFrame;
    
    CGRect passFieldFrame = CGRectMake(555.0, 637.0, 97.0, 31.0);
    passField.frame = passFieldFrame;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return YES;
    

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
