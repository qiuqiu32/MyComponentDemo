//
//  ViewController.m
//  MyComponentDemo
//
//  Created by mac on 2020/7/11.
//  Copyright © 2020 mac. All rights reserved.
//

#import "ViewController.h"
#import "QSComponent.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    QSComponent *com = [[QSComponent alloc] init];
    [com QSComponentA];
}


@end
