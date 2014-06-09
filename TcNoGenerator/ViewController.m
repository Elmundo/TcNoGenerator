//
//  ViewController.m
//  TcNoGenerator
//
//  Created by Baris YILMAZ on 05/06/14.
//  Copyright (c) 2014 Baris YILMAZ. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

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

- (NSString *)generateRandomTcNo
{
    int dataList[10];
    for (int i=1; i <= 9; i++) {
        
        dataList[i] = arc4random_uniform(10);
    }
    
    int h10 = (((dataList[1] + dataList[3] + dataList[5] + dataList[7] + dataList[9]) * 7) - dataList[2] + dataList[4] + dataList[6] + dataList[8]) % 10;
    int h11 = (dataList[1] + dataList[3] + dataList[5] + dataList[7] + dataList[9] + dataList[2] + dataList[4] + dataList[6] + dataList[8] + h10) % 10;
    
    int64_t tcNo = 0;
    for (int j=1; j <= 9; ++j) {
        
        tcNo += dataList[j];
        tcNo *= 10;
    }
    
    tcNo += h10;
    tcNo *= 10;
    tcNo += h11;

    NSString *noStr = [NSString stringWithFormat:@"%lld", tcNo];
    
    return noStr;
}

- (void)button_clicked:(id)sender
{
    NSString *no = [self generateRandomTcNo];
    
    self.tcNoResult.text = no;
}

@end
