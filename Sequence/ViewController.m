//
//  ViewController.m
//  Sequence
//
//  Created by Наташа on 21.04.18.
//  Copyright © 2018 Наташа. All rights reserved.
//

#import "ViewController.h"
#import "myClass.h"
#import "CategoryName.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    myClass* class = [[myClass alloc]init];
    [class setArr:@[@503, @505, @587, @656, @766, @1485, @1939, @2264, @2780, @2813, @2900, @3083, @3118, @3379, @3402, @3602, @3621, @4079, @4103, @4222, @4285, @4689, @4828, @4983, @4988, @5107, @5163, @5311, @5719, @5781, @5854, @6225, @6319, @6326, @6421, @6972, @7225, @7317, @7366, @7427, @7514, @7775, @7793, @7819, @8182, @8516, @8602, @8976, @9143, @9255, @9265, @9285, @9310, @9394, @9452, @9754]];
    [class sortAscending];
    [class sum];
    [class findSeq];
    [class release];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
