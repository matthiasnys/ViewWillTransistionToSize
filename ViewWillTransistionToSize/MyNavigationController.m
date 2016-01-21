//
//  MyNavigationController.m
//  ViewWillTransistionToSize
//
//  Created by Matthias Nys on 21/01/16.
//  Copyright © 2016 B-NYS. All rights reserved.
//

#import "MyNavigationController.h"

@interface MyNavigationController ()

@end

@implementation MyNavigationController

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id<UIViewControllerTransitionCoordinator>)coordinator
{
    [super viewWillTransitionToSize:size withTransitionCoordinator:coordinator];
    
//    for (UIViewController *viewController in self.viewControllers)
//    {
//        if (self.viewControllers.lastObject != viewController)
//        {
//            CGRect frame = viewController.view.frame;
//            frame.size = size;
//            viewController.view.frame = frame;
//        }
//    }
}

@end
