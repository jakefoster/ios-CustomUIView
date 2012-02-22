//
//  CustomUIViewViewController.m
//  CustomUIView
//
//  Created by Jake Foster on 2/11/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "MainViewController.h"

@implementation MainViewController
@synthesize customUIView = _customUIView;
@synthesize valueTextField = _valueTextField;
@synthesize theValueLabel = _theValueLabel;

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)viewDidUnload
{
    [self setCustomUIView:nil];
    [self setValueTextField:nil];
    [self setTheValueLabel:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    self.customUIView.backgroundColor = [UIColor clearColor];
    self.valueTextField.text = self.customUIView.toggle.on ? @"On" : @"Off";
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
}

- (void)viewWillDisappear:(BOOL)animated
{
	[super viewWillDisappear:animated];
}

- (void)viewDidDisappear:(BOOL)animated
{
	[super viewDidDisappear:animated];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

-(void)customUIView:(CustomUIView *)view valueChanged:(BOOL)value
{
    self.theValueLabel.alpha = 0.0;

    [UIView beginAnimations:nil context:nil];
    [UIView setAnimationDuration:0.5];
    self.theValueLabel.alpha = 1.0;
    [UIView commitAnimations];
    
    self.valueTextField.text = value ? @"On" : @"Off";
    // NOTE: Or you can look at the UISwitch value directly since it is
    //  displayed as a public property (.toggle) on the CustomUIView.  JF
    self.valueTextField.text = self.customUIView.toggle.on ? @"On" : @"Off";
}
@end
