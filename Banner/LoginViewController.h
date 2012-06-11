//
//  LoginViewController.h
//  Banner
//
//  Created by User User on 6/9/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <QuartzCore/QuartzCore.h>


@interface LoginViewController : UIViewController

{
    IBOutlet UITableView *userTable;
    IBOutlet UIImageView *titleImage;
    IBOutlet UIImageView *background;
    IBOutlet UIButton *nextButton;
    IBOutlet UILabel *passwordLabel;
    IBOutlet UITextField *passField;
}

@property (nonatomic, retain) NSMutableArray *userArray;

@end
