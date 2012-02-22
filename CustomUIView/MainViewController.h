//
//  CustomUIViewViewController.h
//  CustomUIView
//
//  Created by Jake Foster on 2/11/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CustomUIView.h"

@interface MainViewController : UIViewController <CustomUIViewDelegate>
{
    CustomUIView *_customUIView;
}

@property (strong, nonatomic) IBOutlet CustomUIView *customUIView;
@property (strong, nonatomic) IBOutlet UITextField *valueTextField;
@property (strong, nonatomic) IBOutlet UILabel *theValueLabel;

@end
