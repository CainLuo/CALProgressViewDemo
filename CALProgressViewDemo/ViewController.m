//
//  ViewController.m
//  CALProgressViewDemo
//
//  Created by Cain on 1/6/2016.
//  Copyright © 2016 Cain. All rights reserved.
//

#import "ViewController.h"
#import "CALProgressAssembly.h"
#import "CALProgressView.h"

#import "AspProgressView.h"

@interface ViewController ()

@property (nonatomic, strong) CALProgressAssembly *progressAssembly;

@property (nonatomic, strong) CALProgressView *progressView;

@property (weak, nonatomic) IBOutlet AspProgressView *progressViewSB;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UIButton *button = [UIButton buttonWithType:UIButtonTypeSystem];
    button.frame = CGRectMake(200, 200, 50, 50);
    
    [button setTitle:@"点击" forState:UIControlStateNormal];
    [button addTarget:self action:@selector(buttonAction:) forControlEvents:UIControlEventTouchUpInside];
    
    [self.view addSubview:button];
    
    UIButton *button1 = [UIButton buttonWithType:UIButtonTypeSystem];
    button1.frame = CGRectMake(80, 200, 50, 50);
    
    [button1 setTitle:@"重置" forState:UIControlStateNormal];
    [button1 addTarget:self action:@selector(restAction:) forControlEvents:UIControlEventTouchUpInside];
    
    [self.view addSubview:button1];
    
    
    self.progressAssembly = [[CALProgressAssembly alloc] initWithFrame:CGRectMake(60, 150, self.view.frame.size.width / 2, 100)];
    
    self.progressAssembly.progressPercentage = 1024.f / 2048.f;
    
    self.progressAssembly.titleColor = [UIColor blackColor];
    self.progressAssembly.percentageColor = [UIColor purpleColor];
    self.progressAssembly.progressTitle = @"1123";
    
    self.progressView = [[CALProgressView alloc] initWithFrame:CGRectMake(60, 250, self.view.frame.size.width / 2, 100)];
    self.progressView.progressViewStyle = AspProgressViewSinglenessStyle;
    self.progressView.progress = 0.5;
    self.progressView.progressColor = [UIColor redColor];
    self.progressView.backgroundColor = [UIColor blackColor];
    
    self.progressViewSB.progress = 0.5f;

    //    self.progressAssembly.isNeedTitleLabel = NO;
    
    
    
    [self.view addSubview:self.progressView];
    [self.view addSubview:self.progressAssembly];
}

- (void)buttonAction:(UIButton *)sender {
    
    self.progressAssembly.progressView.progress = 0.3f;
    self.progressView.progress = 0.3f;
    
    self.progressAssembly.progressPercentage = 0.3f;
    
    self.progressViewSB.progress = 0.3f;
}

- (void)restAction:(UIButton *)sender {
    
    self.progressAssembly.progressView.progress = 1.f;
    self.progressView.progress = 1.f;
    self.progressAssembly.progressPercentage = 1.f;
    
    self.progressViewSB.progress = 1.f;
}

@end
