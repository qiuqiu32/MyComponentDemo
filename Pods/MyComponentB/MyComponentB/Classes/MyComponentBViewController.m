//
//  MyComponentBViewController.m
//  FBSnapshotTestCase
//
//  Created by mac on 2020/7/14.
//

#import "MyComponentBViewController.h"
#import <MyTestRouter/MTRouter.h>


@interface MyComponentBViewController ()

@end

@implementation MyComponentBViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.

        [self.view setBackgroundColor:[UIColor whiteColor]];
    
        UIButton *btn = [[UIButton alloc] initWithFrame:CGRectMake(0, 0, 150, 30)];
        [btn setTitle:@"TO ComponentA" forState:UIControlStateNormal];
        [btn setTitleColor:[UIColor redColor] forState:UIControlStateNormal];

        [btn addTarget:self action:@selector(clickBtn) forControlEvents:UIControlEventTouchUpInside];
        btn.center = self.view.center;
        [self.view addSubview:btn];
}

-(id)updateInfo:(NSString *)sender{
    
    if (sender) {
        self.title = sender;
    }
    
    return self;;
}

-(void)clickBtn{
    
    [[MTRouter sharedInstance] performTarget:@"MyComponentViewController" action:@"updateInfo:" arguments:[NSArray arrayWithObject:@"来自组件B"] isCacheTarget:YES];
    [self.navigationController popViewControllerAnimated:YES];
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
