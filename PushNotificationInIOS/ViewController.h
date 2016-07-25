//
//  ViewController.h
//  PushNotificationInIOS
//
//  Created by Dilip Kosuri on 25/7/16.
//  Copyright © 2016 Dilip Kosuri. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <UITextFieldDelegate>
@property (strong, nonatomic) IBOutlet UITextField *usernameVal;


@property (strong, nonatomic) IBOutlet UITextField *passwordVal;
- (IBAction)backgroundTap:(id)sender;

- (IBAction)loginHandler:(id)sender;


@end

