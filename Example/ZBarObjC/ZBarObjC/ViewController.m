//
//  ViewController.m
//  ZBarObjC
//
//  Created by Francesco Frison on 09/08/2014.
//  Copyright (c) 2014 Ziofritz. All rights reserved.
//

#import "ViewController.h"
#import "ZBarSDK.h"

@interface ViewController ()

@property (nonatomic, strong) ZBarReaderView *readerView;

@end

@implementation ViewController
            
- (void)viewDidLoad {
    [super viewDidLoad];
    ZBarImageScanner *scanner = [[ZBarImageScanner alloc] init];
    self.readerView = [[ZBarReaderView alloc] initWithImageScanner:scanner];
    
    [self.view addSubview:self.readerView];
    
    self.readerView.frame = self.view.bounds;
    [self.readerView start];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
