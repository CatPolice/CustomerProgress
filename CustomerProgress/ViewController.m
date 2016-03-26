//
//  ViewController.m
//  CustomerProgress
//
//  Created by gavin on 16/3/26.
//  Copyright © 2016年 gavin. All rights reserved.
//

#import "ViewController.h"
#import "CustomerProgress.h"

@interface ViewController ()
{
    CustomerProgress *_cp;
}
- (IBAction)addButton:(id)sender;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    
    _cp = [[CustomerProgress alloc] initWithFrame:CGRectMake(100, 100, 100, 100)];
    [self.view addSubview:_cp];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)addButton:(id)sender {
    
    _cp.progressValue = _cp.progressValue + 0.1;
}
@end
