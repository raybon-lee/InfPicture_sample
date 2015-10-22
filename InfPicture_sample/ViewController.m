//
//  ViewController.m
//  InfPicture_sample
//
//  Created by ihuzhou on 15/10/21.
//  Copyright © 2015年 ihuzhou. All rights reserved.
//

#import "ViewController.h"
#import "InfPicture.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UIImage* imageA = [UIImage imageNamed:@"3.jpg"];
    NSArray * testArray = @[@"1.jpg",[NSURL URLWithString:@"http://i13.tietuku.com/503e7a9a4e1b0017.jpg"],imageA];
    

    [_infView setImageArray:[[NSMutableArray alloc]initWithArray:testArray]
              andImageIndex:0
             hasPageControl:YES
         openAutoCycleImage:YES
               timeInterval:5
      InfPictureBeenClicked:^(NSInteger index) {
          NSLog(@"%ld",index);

      }];
//    [_infView openAutoCycleImage:YES];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
