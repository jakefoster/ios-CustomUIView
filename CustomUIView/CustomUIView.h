//
//  CustomUIView.h
//  CustomUIView
//
//  Created by Jake Foster on 2/12/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@class CustomUIView;

@protocol CustomUIViewDelegate
- (void)customUIView:(CustomUIView *)view valueChanged:(BOOL) value;
@end

@interface CustomUIView : UIView
{
    UIView *_view;
}

@property (nonatomic, strong) IBOutlet id<CustomUIViewDelegate> delegate;

@property (nonatomic, retain) IBOutlet UIView *view;
@property (strong, nonatomic) IBOutlet UIImageView *statusImage;
@property (strong, nonatomic) IBOutlet UISwitch *toggle;

- (IBAction)onSwitch_ValueChanged:(id)sender;

@end