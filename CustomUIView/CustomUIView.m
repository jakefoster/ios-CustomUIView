//
//  CustomUIView.m
//  CustomUIView
//
//  Created by Jake Foster on 2/12/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "CustomUIView.h"

@implementation CustomUIView

@synthesize view = _view;
@synthesize statusImage = _statusImage;
@synthesize toggle = _toggle;
@synthesize delegate = _delegate;

-(void)initView
{
    NSArray *nibs = [[NSBundle mainBundle] loadNibNamed:@"CustomUIView" owner:self options:nil];
    for(id item in nibs) 
    {
        if ([item isKindOfClass:[UIView class]])
        {
            self.view = (UIView *)item;
            
        }
    }
    if(self.view) 
    {
        [self addSubview:self.view];
    }
}

// NOTE: Called when created programmatically from "client" View or ViewController.  JF
- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) 
    {
        [self initView];
        
    }
    return self;
}

// NOTE: Called indirectly when contained in a parent Nib that is be initialized.  JF 
-(id)initWithCoder:(NSCoder *)aDecoder
{
    self = [super initWithCoder:aDecoder];
    if(self)
    {
        [self initView];
        self.view.frame = CGRectMake(0, 0, self.frame.size.width, self.frame.size.height);
    }
    return self;
}

- (IBAction)onSwitch_ValueChanged:(id)sender 
{
    BOOL newValue = ((UISwitch *)sender).on;
    
    NSString *statusImageName = @"unknown";
    if( newValue == YES )
    {
        statusImageName = @"accept.png";
    }
    else
    {
        statusImageName = @"asterisk_orange.png";
    }
    
    UIImage *image = [UIImage imageNamed: statusImageName];
    self.statusImage.image = image;
     
    [self.delegate customUIView:self valueChanged:newValue];
}
@end
