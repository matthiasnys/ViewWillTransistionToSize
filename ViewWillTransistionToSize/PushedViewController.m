//
//  PushedViewController.m
//  ViewWillTransistionToSize
//
//  Created by Matthias Nys on 21/01/16.
//  Copyright © 2016 B-NYS. All rights reserved.
//

#import "PushedViewController.h"

@interface MyView : UIView

@end

@interface PushedViewController ()

@end

@implementation MyView

- (void)setFrame:(CGRect)frame
{
    [super setFrame:frame];
    NSLog(@"My View - SetFrame : %@ ", @(frame.size.width));
}

@end

@implementation PushedViewController


- (void)loadView
{
    self.view = [MyView new];
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor redColor];
    UIButton *button = [UIButton buttonWithType:UIButtonTypeSystem];
    [button setTitle:@"PUSH" forState:UIControlStateNormal];
    button.frame = CGRectMake(100, 100, 100, 100);
    [self.view addSubview:button];
    [button addTarget:self action:@selector(doPush) forControlEvents:UIControlEventTouchUpInside];
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
    self.title = [@([self.navigationController.viewControllers indexOfObject:self]) stringValue];
}

- (void)doPush
{
    [self.navigationController pushViewController:[PushedViewController new] animated:YES];
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id<UIViewControllerTransitionCoordinator>)coordinator
{
    [super viewWillTransitionToSize:size withTransitionCoordinator:coordinator];
    NSLog(@"PushedViewController : %@ - %@", @(size.width), self.title);
}

@end
