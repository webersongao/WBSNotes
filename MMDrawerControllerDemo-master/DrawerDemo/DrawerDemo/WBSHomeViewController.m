//
//  WBSHomeViewController.m
//  WBSFrameWork
//
//  Created by Weberson on 2016/10/25.
//  Copyright © 2016年 Weberson. All rights reserved.
//

#import "WBSHomeViewController.h"


#import <CoreLocation/CoreLocation.h>

@import UserNotifications;

#define kHeightScaleOfUI             BDSCScreenHeight/667
#define kWidthScaleOfUI              BDSCScreenWidth/375
#define kScreenHeight               [UIScreen mainScreen].bounds.size.height
#define kScreenWidth                [UIScreen mainScreen].bounds.size.width


//---WBS--293 图片宽度 ---
@interface WBSHomeViewController ()<UITableViewDelegate,UITableViewDataSource>

@property (nonatomic, strong) UITableView *mainTableView;  //!< tableView

@property (nonatomic, strong) NSArray * demoArray;  //!< 数据源

@end

@implementation WBSHomeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    self.view.backgroundColor = [UIColor blueColor];
    
    
    
}




@end
