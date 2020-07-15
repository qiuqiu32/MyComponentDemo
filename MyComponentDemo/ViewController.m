//
//  ViewController.m
//  MyComponentDemo
//
//  Created by mac on 2020/7/11.
//  Copyright © 2020 mac. All rights reserved.
//

#import "ViewController.h"
#import <MyTestRouter/MTRouter.h>

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.title = @"ViewController";
    [self.view setBackgroundColor:[UIColor whiteColor]];
    
       
       
   UIButton *btn = [[UIButton alloc] initWithFrame:CGRectMake(0, 0, 150, 30)];
 
   [btn setTitle:@"TO ComponentA" forState:UIControlStateNormal];
   [btn setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
   [btn addTarget:self action:@selector(clickBtn) forControlEvents:UIControlEventTouchUpInside];
   btn.center = self.view.center;
   [self.view addSubview:btn];
}
-(void)clickBtn{
    

    UIViewController *viewCtl = [[MTRouter sharedInstance] performTarget:@"MyComponentViewController" action:@"updateInfo:" arguments:[NSArray arrayWithObject:@"来自demo"] isCacheTarget:YES];
    if (viewCtl) {
        [self.navigationController pushViewController:viewCtl animated:YES];
    }
    
    
}


@end
