//
//  ViewController.m
//  PushNotificationInIOS
//
//  Created by Dilip Kosuri on 25/7/16.
//  Copyright © 2016 Dilip Kosuri. All rights reserved.
//

#import "ViewController.h"
#import "AppDelegate.h"
#import "QuartzCore/QuartzCore.h"

@interface ViewController ()

@end

@implementation ViewController

- (UIColor *)getUIColorObjectFromHexString:(NSString *)hexStr alpha:(CGFloat)alpha
{
    // Convert hex string to an integer
    unsigned int hexint = [self intFromHexString:hexStr];
    
    // Create color object, specifying alpha as well
    UIColor *color =
    [UIColor colorWithRed:((CGFloat) ((hexint & 0xFF0000) >> 16))/255
                    green:((CGFloat) ((hexint & 0xFF00) >> 8))/255
                     blue:((CGFloat) (hexint & 0xFF))/255
                    alpha:alpha];
    
    return color;
}

- (unsigned int)intFromHexString:(NSString *)hexStr
{
    unsigned int hexInt = 0;
    
    // Create scanner
    NSScanner *scanner = [NSScanner scannerWithString:hexStr];
    
    // Tell scanner to skip the # character
    [scanner setCharactersToBeSkipped:[NSCharacterSet characterSetWithCharactersInString:@"#"]];
    
    // Scan hex value
    [scanner scanHexInt:&hexInt];
    
    return hexInt;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    // Set the button Text Color
    [_loginButton setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [_loginButton setTitleColor:[UIColor redColor] forState:UIControlStateHighlighted];
    
    // Set the button Background Color
    [_loginButton setBackgroundColor:[UIColor blackColor]];
    
    
    // Add Border
    CALayer *layer = _loginButton.layer;
    layer.cornerRadius = 8.0f;
    layer.masksToBounds = YES;
    layer.borderWidth = 1.0f;
    layer.borderColor = [UIColor colorWithWhite:0.5f alpha:0.2f].CGColor;
    
    // Add Shine
    CAGradientLayer *shineLayer = [CAGradientLayer layer];
    shineLayer.frame = layer.bounds;
    shineLayer.colors = [NSArray arrayWithObjects:
                         (id)[UIColor colorWithWhite:1.0f alpha:0.4f].CGColor,
                         (id)[UIColor colorWithWhite:1.0f alpha:0.2f].CGColor,
                         (id)[UIColor colorWithWhite:0.75f alpha:0.2f].CGColor,
                         (id)[UIColor colorWithWhite:0.4f alpha:0.2f].CGColor,
                         (id)[UIColor colorWithWhite:1.0f alpha:0.4f].CGColor,
                         nil];
    shineLayer.locations = [NSArray arrayWithObjects:
                            [NSNumber numberWithFloat:0.0f],
                            [NSNumber numberWithFloat:0.5f],
                            [NSNumber numberWithFloat:0.5f],
                            [NSNumber numberWithFloat:0.8f],
                            [NSNumber numberWithFloat:1.0f],
                            nil];
    [layer addSublayer:shineLayer];
    
    NSString *hexStr1 = @"#C02425";
    NSString *hexStr2 = @"#F0CB35";
    
    UIColor *color1 = [self getUIColorObjectFromHexString:hexStr1 alpha:.9];
    NSLog(@"UIColor: %@", color1);
    
    UIColor *color2 = [self getUIColorObjectFromHexString:hexStr2 alpha:.9];
    NSLog(@"UIColor: %@", color2);
    
    CAGradientLayer *gradient = [CAGradientLayer layer];
    gradient.frame = self.view.frame;
    
    gradient.colors = [NSArray arrayWithObjects:(id)color1.CGColor, (id)color2.CGColor, nil];
    [self.view.layer insertSublayer:gradient atIndex:0];

   
    
   // self.view.backgroundColor = UIColorFromRGB(0xCECECE);
    
    //self.view.backgroundColor = [UIColor redColor];
    
   // self.view.backgroundColor = [AppDelegate myColor1];
//    
//    CAGradientLayer *gradient = [CAGradientLayer layer];
//    gradient.frame = self.view.frame;
//    UIColor *firstColor = [UIColor colorWithRed:255.0f
//                                          green:197.0f
//                                           blue:0.0f
//                                          alpha:1.0f];
//    UIColor *secondColor = [UIColor colorWithRed:194.0f
//                                           green:21.0f
//                                            blue:0.0f
//                                           alpha:1.0f];
//    
//    gradient.colors = [NSArray arrayWithObjects:(id)firstColor.CGColor, (id)secondColor.CGColor, nil];
//    [self.view.layer insertSublayer:gradient atIndex:0];
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)loginHandler:(id)sender {
    NSInteger success = 0;
    @try {
        
        [self performSegueWithIdentifier:@"SegueToMainView" sender:self];
        
//        if([[self.usernameVal text] isEqualToString:@""] || [[self.passwordVal text] isEqualToString:@""] ) {
//            
//            [self alertStatus:@"Please enter Email and Password" :@"Sign in Failed!" :0];
//            
//        } else {
//            NSString *post =[[NSString alloc] initWithFormat:@"username=%@&password=%@",[self.usernameVal text],[self.passwordVal text]];
//            NSLog(@"PostData: %@",post);
//            
//            NSURL *url=[NSURL URLWithString:@"https://dipinkrishna.com/jsonlogin.php"];
//            
//            NSData *postData = [post dataUsingEncoding:NSASCIIStringEncoding allowLossyConversion:YES];
//            
//            NSString *postLength = [NSString stringWithFormat:@"%lu", (unsigned long)[postData length]];
//            
//            NSMutableURLRequest *request = [[NSMutableURLRequest alloc] init];
//            [request setURL:url];
//            [request setHTTPMethod:@"POST"];
//            [request setValue:postLength forHTTPHeaderField:@"Content-Length"];
//            [request setValue:@"application/json" forHTTPHeaderField:@"Accept"];
//            [request setValue:@"application/x-www-form-urlencoded" forHTTPHeaderField:@"Content-Type"];
//            [request setHTTPBody:postData];
//            
//            //[NSURLRequest setAllowsAnyHTTPSCertificate:YES forHost:[url host]];
//            
//            NSError *error = [[NSError alloc] init];
//            NSHTTPURLResponse *response = nil;
//            NSData *urlData=[NSURLConnection sendSynchronousRequest:request returningResponse:&response error:&error];
//            
//            NSLog(@"Response code: %ld", (long)[response statusCode]);
//            
//            if ([response statusCode] >= 200 && [response statusCode] < 300)
//            {
//                NSString *responseData = [[NSString alloc]initWithData:urlData encoding:NSUTF8StringEncoding];
//                NSLog(@"Response ==> %@", responseData);
//                
//                NSError *error = nil;
//                NSDictionary *jsonData = [NSJSONSerialization
//                                          JSONObjectWithData:urlData
//                                          options:NSJSONReadingMutableContainers
//                                          error:&error];
//                
//                success = [jsonData[@"success"] integerValue];
//                NSLog(@"Success: %ld",(long)success);
//                
//                if(success == 1)
//                {
//                    NSLog(@"Login SUCCESS");
//                } else {
//                    
//                    NSString *error_msg = (NSString *) jsonData[@"error_message"];
//                    [self alertStatus:error_msg :@"Sign in Failed!" :0];
//                }
//                
//            } else {
//                //if (error) NSLog(@"Error: %@", error);
//                [self alertStatus:@"Connection Failed" :@"Sign in Failed!" :0];
//            }
//        }
    }
    @catch (NSException * e) {
        NSLog(@"Exception: %@", e);
        [self alertStatus:@"Sign in Failed." :@"Error!" :0];
    }
    if (success) {
        [self performSegueWithIdentifier:@"login_success" sender:self];
    }
    
}

- (void) alertStatus:(NSString *)msg :(NSString *)title :(int) tag
{
    UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:title
                                                        message:msg
                                                       delegate:self
                                              cancelButtonTitle:@"Ok"
                                              otherButtonTitles:nil, nil];
    alertView.tag = tag;
    [alertView show];
}


-(BOOL) textFieldShouldReturn:(UITextField *)textField{
    [textField resignFirstResponder];
    return YES;
}

- (IBAction)backgroundTap:(id)sender {
    [self.view endEditing:YES];
    
}
@end
