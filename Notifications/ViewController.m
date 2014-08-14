//
//  ViewController.m
//  Notifications
//
//  Created by Efrén Reyes Torres on 8/14/14.
//  Copyright (c) 2014 ___FULLUSERNAME___. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UITextField *textField;

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)changeColor:(id)sender {
    [self.view endEditing:YES];
    NSLog(@"Sending notification");
    [[NSNotificationCenter defaultCenter] postNotificationName:@"ChangeColorNotification" object:[self.textField.text lowercaseString]];
}

@end
