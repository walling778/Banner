//
//  PatientFormsViewController.m
//  Banner
//
//  Created by test test on 6/10/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "PatientFormsViewController.h"

@interface PatientFormsViewController ()

@end



@implementation PatientFormsViewController

@synthesize testArray, testTable, mriView, mriTable;

-(IBAction)segmentPressed:(UISegmentedControl*)sender
{
    NSLog(@"Yip");
    if (sender.selectedSegmentIndex == 0) 
    {
        [self showBehavioral];
    }
    
    else if (sender.selectedSegmentIndex == 1) 
    {
        [self showMRI];
    }
    
    else if (sender.selectedSegmentIndex == 2) 
    {
        [self showHistory];
    }
}

-(void)showHistory
{
    [self.testTable removeFromSuperview];
    self.testTable = nil;
    [self.mriView removeFromSuperview];
    self.mriView = nil;
    
    scoreLabel1.alpha = 0.0;
    scoreLabel2.alpha = 0.0;
    scoreLabel3.alpha = 0.0;
    scoreField1.alpha = 0.0;
    scoreField2.alpha = 0.0;
    scoreField3.alpha = 0.0;
    scoreButton1.alpha = 0.0;
    scoreButton2.alpha = 0.0;
    scoreButton3.alpha = 0.0;

}

-(void)showMRI
{
    [self.testTable removeFromSuperview];
    self.testTable = nil;
    
    CGRect frame = CGRectMake(39.0, 120.0, 690.0, 619.0);
    UIImage *mri = [UIImage imageNamed:@"mri.jpg"];
    UIImageView *iv = [[UIImageView alloc] initWithFrame:frame];
    iv.image = mri;
    
    [self.view addSubview:iv];
    self.mriView = iv;
    
    scoreLabel1.alpha = 0.0;
    scoreLabel2.alpha = 0.0;
    scoreLabel3.alpha = 0.0;
    scoreField1.alpha = 0.0;
    scoreField2.alpha = 0.0;
    scoreField3.alpha = 0.0;
    scoreButton1.alpha = 0.0;
    scoreButton2.alpha = 0.0;
    scoreButton3.alpha = 0.0;
}

-(void)showBehavioral
{
    NSLog(@"showBehavioral");
    [self.mriView removeFromSuperview];
    self.mriView = nil;
    
    CGRect tableFrame = CGRectMake(0.0, 132.0, 768, 872.0);
    UITableView *behaviorTable = [[UITableView alloc] initWithFrame:tableFrame];
    behaviorTable.dataSource = self;
    behaviorTable.delegate = self;
    self.testTable = behaviorTable;
    [self.view addSubview:behaviorTable];
    
    scoreLabel1.alpha = 1.0;
    scoreLabel2.alpha = 1.0;
    scoreLabel3.alpha = 1.0;
    scoreField1.alpha = 1.0;
    scoreField2.alpha = 1.0;
    scoreField3.alpha = 1.0;
    scoreButton1.alpha = 1.0;
    scoreButton2.alpha = 1.0;
    scoreButton3.alpha = 1.0;





}



- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    NSLog(@"count is %d",self.testArray.count);
    return self.testArray.count;
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
    cell.textLabel.text = [NSString stringWithFormat:@"%@", [self.testArray objectAtIndex:indexPath.row]];

}
/*
- (UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section 
{
    
    CGRect frame = self.testTable.frame;
    frame.size.height = 44;
    UIView *theView = [[UIView alloc] initWithFrame:frame]; 
    theView.backgroundColor = [UIColor lightGrayColor];
    UIButton *date1 = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    date1.frame = CGRectMake(354.0,3.0, 72.0, 37.0);
    [date1 setTitle:@"01/03/12" forState:UIControlStateNormal];
    [theView addSubview:date1];
    
    return theView;
     
}
*/

- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section 
{
    return 30.0;   
}

- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section 
{
return @"Assessment                                            5/3/12                           6/2/12";
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.testArray = [[NSMutableArray alloc] init];
    NSArray *array = [[NSArray alloc] initWithObjects:@"Pre-stroke Rankin score", @"MRI", @"NIH Stroke Scale", @"Handedness Score", @"Apraxia Scale", @"Nottingham Sensory Assessment", @"Boston Naming Test", @"Line cancellation test", @"Blood for genotyping", @"Modified Rankin Scale", @"Geriatric Depression Scale", @"Beck Hopelessness Scale", @"Stroke Specific Quality of Life Scale", @"Arm motor Fugl-Meyer score", @"Leg motor Fugl-Meyer score", @"Gait velocity", @"Box & Blocks Test", @"Stroke impact scale", @"Ashworth spasticity", @"9 Hole Peg Test", @"Test of finger extension / shoulder abduction", @"Record any recurrent stroke", @"Record any readmission to acute care hospital for any reason", @"Record home time", @"Record # OT, PT, and Speech T sessions", nil];
    [self.testArray addObjectsFromArray:array];
    [self showBehavioral];
    [segControl addTarget:self action:@selector(segmentPressed:) forControlEvents:UIControlEventAllEvents];
    

    
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

- (void) willRotateToInterfaceOrientation:(UIInterfaceOrientation)toInterfaceOrientation duration:(NSTimeInterval)duration 
{
    [self adjustViewsForOrientation:toInterfaceOrientation];
}

- (void) adjustViewsForOrientation:(UIInterfaceOrientation)orientation 
{
    if (orientation == UIInterfaceOrientationLandscapeLeft || orientation == UIInterfaceOrientationLandscapeRight) 
    {
        self.mriView.frame = CGRectMake(303.0f,0.0,721.0f,754.0f);
        if (segControl.selectedSegmentIndex == 1) 
        {
            UITableView *mTable = [[UITableView alloc] initWithFrame:CGRectMake(0.0,0.0,303.0,748.0)];
            [self.view addSubview:mTable];
            self.mriTable = mTable;
        }

    }
    else if (orientation == UIInterfaceOrientationPortrait || orientation == UIInterfaceOrientationPortraitUpsideDown) 
    {
        self.mriView.center = CGPointMake(384.0f, 429.5f);
        [self.mriTable removeFromSuperview];
    }
}



@end
