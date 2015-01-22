//
//  MyTextField.h
//  LongPressMenu
//
//  Created by renhe on 15/1/22.
//  Copyright (c) 2015年 donbe. All rights reserved.
//

#import "InputResponderProtocol.h"
#import <UIKit/UIKit.h>

@interface MyTextField : UITextField<InputResponderProtocol>

@property (nonatomic, weak) UIResponder *inputNextResponder; //事件的下一个接受者

@end
