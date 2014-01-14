//
//  TemperatureViewController.m
//  temperature_converter
//
//  Created by Anusha Chagarlamudi on 1/13/14.
//  Copyright (c) 2014 Anusha Chagarlamudi. All rights reserved.
//

#import "TemperatureViewController.h"

@interface TemperatureViewController ()
@property (weak, nonatomic) IBOutlet UITextField *fahrenheitControl;
@property (weak, nonatomic) IBOutlet UITextField *celciusControl;
- (IBAction)onUserUpdatingCelcius:(id)sender;
- (IBAction)onUserUpdatingFahrenheit:(id)sender;

@end

@implementation TemperatureViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.fahrenheitControl.text = @"32";
    self.celciusControl.text = @"0";
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)onUserUpdatingCelcius:(id)sender {
    [self updateFAH];
}

- (void)updateFAH {
    float celcius = [self.celciusControl.text floatValue];
    float fahrenheit = (celcius * 9 / 5) + 32;
    self.fahrenheitControl.text = [NSString stringWithFormat:@"%0.2f", fahrenheit];
}

- (IBAction)onUserUpdatingFahrenheit:(id)sender {
    float fahrenheit = [self.fahrenheitControl.text floatValue];
    float celcius = (fahrenheit - 32) * 5 / 9;
    self.celciusControl.text = [NSString stringWithFormat:@"%0.2f", celcius];

}
@end
