//
//  ViewController.h
//  Banner
//
//  Created by William Brady Alling on 6/7/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <QuartzCore/QuartzCore.h>


@interface ViewController : UIViewController

{
    IBOutlet UILabel *label;
    IBOutlet UITableView *patientTable;
    
    IBOutlet UIToolbar *toolbar1;
    IBOutlet UIToolbar *toolbar2;
    IBOutlet UIBarButtonItem *deleteButton;
    
    IBOutlet UIView *flexView;
    
    IBOutlet UITextField *firstNameField;
    IBOutlet UITextField *lastNameField;
    IBOutlet UITextField *bannerIDField;
    IBOutlet UITextField *hospitalField;
    IBOutlet UITextField *physicianField;




}

@property (nonatomic, retain) NSMutableArray *patientArray;

@end
