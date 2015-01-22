//
//  ViewController.m
//  LongPressMenu
//
//  Created by renhe on 15/1/22.
//  Copyright (c) 2015年 donbe. All rights reserved.
//

#import "ViewController.h"
#import "MyLabel.h"
#import "MyTextField.h"

@interface ViewController (){
    MyTextField *textField;
}

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    UITapGestureRecognizer *tapGr = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(tapped:)];
    [self.view addGestureRecognizer:tapGr];

    
    textField = [[MyTextField alloc] initWithFrame:CGRectMake(15, 160, 150, 30)];
    textField.layer.borderColor = [UIColor purpleColor].CGColor;
    textField.layer.borderWidth = 0.5;
    textField.placeholder = @"enter text here";
    [self.view addSubview:textField];
    
    MyLabel *pressLabel = [[MyLabel alloc] initWithFrame:CGRectMake(15, 120, 150, 20)];
    pressLabel.text = @"long press me";
    pressLabel.inputTextView = textField;
    [self.view addSubview:pressLabel];
}

-(void)tapped:(id)sender{
    [textField resignFirstResponder];
}
@end
