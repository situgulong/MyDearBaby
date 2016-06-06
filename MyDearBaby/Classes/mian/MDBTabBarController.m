//
//  MDBTabBarController.m
//  MyDearBaby
//
//  Created by 影子恋人 on 16/5/4.
//  Copyright © 2016年 影子恋人. All rights reserved.
//

#import "MDBTabBarController.h"

#import "MDBNavigationController.h"

#import "MDBHomeController.h"
#import "MDBLetterController.h"
#import "MDBDiscoverController.h"
#import "MDBProfileController.h"

#define randomCloler [UIColor colorWithRed:(float)(arc4random()%255)/255 green:(float)(arc4random()%255)/255 blue:(float)(arc4random()%255)/255 alpha:1];
@interface MDBTabBarController ()

@end

@implementation MDBTabBarController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self addchildViewcontrollerWithClass:[MDBHomeController class] title:@"首页" image:@"tabbar_home" selectedImage:@"tabbar_home_selected"];
    [self addchildViewcontrollerWithClass:[MDBLetterController class] title:@"时间胶囊" image:@"tabbar_message_center" selectedImage:@"tabbar_message_center_selected"];
    [self addchildViewcontrollerWithClass:[MDBDiscoverController class] title:@"发现" image:@"tabbar_discover" selectedImage:@"tabbar_discover_selected"];
    [self addchildViewcontrollerWithClass:[MDBProfileController class] title:@"我的" image:@"tabbar_profile" selectedImage:@"tabbar_profile_selected"];
}

/**
 *  添加带了导航控制器的控制器到tabbar控制器
 *
 *  @param class         控制器的类
 *  @param title         导航栏和tabbar的title
 *  @param image         tabbar上未选中的图片
 *  @param selectedImage tabbar上选中的图片
 */
-(void)addchildViewcontrollerWithClass:(Class)class title:(NSString *)title image:(NSString *)image selectedImage:(NSString *)selectedImage
{
    UIViewController *home = [[class alloc]init];
    home.view.backgroundColor = randomCloler;
    home.title = title;
    [home.tabBarItem setTitleTextAttributes:@{NSForegroundColorAttributeName:[UIColor orangeColor]} forState:UIControlStateSelected];
    [home.tabBarItem setImage:[UIImage imageNamed:image]];
    [home.tabBarItem setSelectedImage:[[UIImage imageNamed:selectedImage] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal]];
    MDBNavigationController *navigationController = [[MDBNavigationController alloc]initWithRootViewController:home];
    [self addChildViewController:navigationController];

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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
