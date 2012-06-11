//
//  PatientFormsViewController.h
//  Banner
//
//  Created by User User on 6/10/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface PatientFormsViewController : UIViewController <UITableViewDataSource, UITableViewDelegate>

{
    IBOutlet UISegmentedControl *segControl;
    IBOutlet UILabel *scoreLabel1;
    IBOutlet UILabel *scoreLabel2;
    IBOutlet UILabel *scoreLabel3;
    IBOutlet UITextField *scoreField1;
    IBOutlet UITextField *scoreField2;
    IBOutlet UITextField *scoreField3;
    IBOutlet UIButton *scoreButton1;
    IBOutlet UIButton *scoreButton2;
    IBOutlet UIButton *scoreButton3;

    



}

@property (nonatomic, retain) NSMutableArray *testArray;
@property (nonatomic, retain) UITableView *testTable;
@property (nonatomic, retain) UIImageView *mriView;
@property (nonatomic, retain) UITableView *mriTable;





@end
