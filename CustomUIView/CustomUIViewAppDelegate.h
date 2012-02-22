//
//  CustomUIViewAppDelegate.h
//  CustomUIView
//
//  Created by Jake Foster on 2/11/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@class MainViewController;

@interface CustomUIViewAppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (strong, nonatomic) MainViewController *viewController;

@end
