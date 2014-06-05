//
//  ViewController.h
//  TcNoGenerator
//
//  Created by Baris YILMAZ on 05/06/14.
//  Copyright (c) 2014 Baris YILMAZ. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property IBOutlet UITextField *tcNoResult;
@property IBOutlet UIButton *generateButton;

- (IBAction)button_clicked:(id)sender;

@end
