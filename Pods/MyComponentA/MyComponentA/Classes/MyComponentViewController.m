//
//  MyComponentViewController.m
//  FBSnapshotTestCase
//
//  Created by mac on 2020/7/14.
//

#import "MyComponentViewController.h"
#import <MyTestRouter/MtRouter.h>

@interface MyComponentViewController ()

@end

@implementation MyComponentViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    [self.view setBackgroundColor:[UIColor whiteColor]];
//    self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc] initWithTitle:@"Root" style:UIBarButtonItemStylePlain target:self action:@selector(rootButtonAction:)];
    UIButton *btn = [[UIButton alloc] initWithFrame:CGRectMake(0, 0, 150, 30)];
    [btn setTitle:@"TO ComponentB" forState:UIControlStateNormal];
    [btn setTitleColor:[UIColor redColor] forState:UIControlStateNormal];

    [btn addTarget:self action:@selector(clickBtn) forControlEvents:UIControlEventTouchUpInside];
    btn.center = self.view.center;
    [self.view addSubview:btn];
    
}
-(void)rootButtonAction:(id)sender{
    
    
    [self.navigationController popViewControllerAnimated:NO];
    
}

-(id)updateInfo:(NSString *)sender{
    
    if (sender) {
        self.title = sender;
    }
    
    return self;
}

-(void)clickBtn{
  
    UIViewController *viewCtl = [[MTRouter sharedInstance] performTarget:@"MyComponentBViewController" action:@"updateInfo:" arguments:[NSArray arrayWithObject:@"来自组件A"] isCacheTarget:YES];
    [self.navigationController pushViewController:viewCtl animated:YES];
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
