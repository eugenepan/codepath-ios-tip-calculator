//
//  SettingsViewController.m
//  tipcalculator
//
//  Created by Eugene Pan on 10/8/14.
//  Copyright (c) 2014 Eugene Pan. All rights reserved.
//

#import "SettingsViewController.h"

@interface SettingsViewController ()

@property (weak, nonatomic) IBOutlet UITextField *initialTextField;

@end

@implementation SettingsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
 
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    self.initialTextField.text = [defaults objectForKey:@"initialValue"];
}

- (void)viewDidDisappear:(BOOL)animated {
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    [defaults setObject:self.initialTextField.text forKey:@"initialValue"];
    [defaults synchronize];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

@end
