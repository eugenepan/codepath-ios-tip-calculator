//
//  SettingsViewController.m
//  tipcalculator
//
//  Created by Eugene Pan on 10/8/14.
//  Copyright (c) 2014 Eugene Pan. All rights reserved.
//

#import "SettingsViewController.h"

@interface SettingsViewController ()

@property (weak, nonatomic) IBOutlet UITextField *defaultGuestNumTextField;

@end

@implementation SettingsViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        self.title =@"Settings";
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    NSString *guestNum = [defaults objectForKey:@"defaultGuestNum"];
    if (guestNum != nil) {
        self.defaultGuestNumTextField.text = guestNum;
    }
}

- (void)viewDidDisappear:(BOOL)animated {
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    [defaults setObject:self.defaultGuestNumTextField.text forKey:@"defaultGuestNum"];
    [defaults synchronize];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

@end
