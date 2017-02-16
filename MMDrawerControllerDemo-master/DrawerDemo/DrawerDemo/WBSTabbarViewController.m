//
//  WBSTabbarViewController.m
//  WBSFrameWork
//
//  Created by Weberson on 2016/10/25.
//  Copyright © 2016年 Weberson. All rights reserved.
//

#import "WBSTabbarViewController.h"
#import "WBSNaviViewController.h"
#import "WBSHomeViewController.h"
#import "WBSNewsViewController.h"
#import "WBSMeViewController.h"



@interface WBSTabbarViewController ()

@end

@implementation WBSTabbarViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    //设置tabbarVC
    [self setUpTabbarVC];
}



#pragma mark 设置TabbarVC
- (void)setUpTabbarVC {

    WBSHomeViewController *HomeVC = [[WBSHomeViewController alloc]init];
    [self setUpNaviVC:HomeVC normalImageStr:@"home_normal" selectImageStr:@"home_selector" andTitle:@"首页"];
    
    WBSNewsViewController *newsVC = [[WBSNewsViewController alloc]init];
    [self setUpNaviVC:newsVC normalImageStr:@"bottom_hos" selectImageStr:@"bottom_hos_white" andTitle:@"资讯"];
    
    WBSMeViewController * meVC = [[WBSMeViewController alloc]init];
    [self setUpNaviVC:meVC normalImageStr:@"bottom_cen" selectImageStr:@"bottom_cen_white" andTitle:@"我的"];
    
}



//统一设置导航条的代码
-(void)setUpNaviVC:(UIViewController *)targetVC normalImageStr:(NSString *)normalName selectImageStr:(NSString *)selectName andTitle:(NSString *)titleStr
{
    targetVC.title = titleStr;
    targetVC.tabBarItem.image = [UIImage imageNamed:normalName];
    targetVC.tabBarItem.selectedImage = [UIImage imageNamed:selectName];
    
    WBSNaviViewController *naviVC = [[WBSNaviViewController alloc]initWithRootViewController:targetVC];

    [self addChildViewController:naviVC];
}


@end
