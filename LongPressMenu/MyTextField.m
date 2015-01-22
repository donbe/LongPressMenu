//
//  MyTextField.m
//  LongPressMenu
//
//  Created by renhe on 15/1/22.
//  Copyright (c) 2015年 donbe. All rights reserved.
//

#import "MyTextField.h"

@implementation MyTextField


- (UIResponder *)nextResponder {
    if (_inputNextResponder != nil)
        return _inputNextResponder;
    else
        return [super nextResponder];
}

- (BOOL)canPerformAction:(SEL)action withSender:(id)sender {
    if (_inputNextResponder) {
        return NO;
    }
    
    return [super canPerformAction:action withSender:sender];
}


@end
