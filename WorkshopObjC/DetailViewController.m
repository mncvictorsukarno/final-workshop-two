//
//  DetailViewController.m
//  WorkshopObjC
//
//  Created by Victor Toya on 20/04/21.
//

#import "DetailViewController.h"

@interface DetailViewController ()

@end

@implementation DetailViewController

NSString * const greeting = @"This is Objective-C Const";

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.view.backgroundColor = [UIColor whiteColor];
}

- (void)viewDidAppear:(BOOL)animated {
    
    UIView *container = [[UIView alloc] initWithFrame:self.view.safeAreaLayoutGuide.layoutFrame];
    container.backgroundColor = [UIColor colorWithRed:204.0/225.0 green:204.0/225.0 blue:204.0/225.0 alpha:0.2];
    [self.view addSubview:container];
    
    UILabel *title = [[UILabel alloc] initWithFrame:CGRectMake(10, 10, container.frame.size.width-20, 50)];
    title.text = greeting;
    title.font = [UIFont boldSystemFontOfSize:18];
    title.textColor = [UIColor lightGrayColor];
    title.textAlignment = NSTextAlignmentCenter;
    title.numberOfLines = 0;
    [container addSubview:title];
    
    UIButton *close = [[UIButton alloc] initWithFrame:CGRectMake(30, CGRectGetMaxY(title.frame)+50, container.frame.size.width-60, 50)];
    close.layer.cornerRadius = 20;
    close.backgroundColor = [self.view tintColor];
    [close setTitle:@"Close" forState:UIControlStateNormal];
    [close setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [container addSubview:close];
    
    [close addTarget:self action:@selector(onCloseWorkshop:) forControlEvents:UIControlEventTouchUpInside];
}

- (void)onCloseWorkshop:(UIButton *)sender
{
    [self dismissViewControllerAnimated:YES completion:nil];
}

@end
