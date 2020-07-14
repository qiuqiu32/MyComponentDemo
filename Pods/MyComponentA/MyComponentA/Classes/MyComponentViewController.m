//
//  MyComponentViewController.m
//  FBSnapshotTestCase
//
//  Created by mac on 2020/7/14.
//

#import "MyComponentViewController.h"

@interface MyComponentViewController ()

@end

@implementation MyComponentViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.title = @"MyComponentAViewController";
    [self.view setBackgroundColor:[UIColor whiteColor]];
//    self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc] initWithTitle:@"Root" style:UIBarButtonItemStylePlain target:self action:@selector(rootButtonAction:)];
    UIButton *btn = [[UIButton alloc] initWithFrame:CGRectMake(0, 0, 150, 30)];
    [btn setTitle:@"TO ComponentA" forState:UIControlStateNormal];
    [btn setTitleColor:[UIColor redColor] forState:UIControlStateNormal];

    [btn addTarget:self action:@selector(clickBtn) forControlEvents:UIControlEventTouchUpInside];
    btn.center = self.view.center;
    [self.view addSubview:btn];
    
}
-(void)rootButtonAction:(id)sender{
    
    
    [self.navigationController popViewControllerAnimated:NO];
    
}

-(void)clickBtn{
    
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
