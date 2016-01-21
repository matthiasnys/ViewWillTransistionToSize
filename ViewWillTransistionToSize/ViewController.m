//
//  ViewController.m
//  ViewWillTransistionToSize
//
//  Created by Matthias Nys on 21/01/16.
//  Copyright © 2016 B-NYS. All rights reserved.
//

#import "ViewController.h"
#import "PushedViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)doPush:(id)sender{
    [self.navigationController pushViewController:[PushedViewController new] animated:YES];
}

@end
