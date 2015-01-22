//
//  MyLabel.h
//  LongPressMenu
//
//  Created by renhe on 15/1/22.
//  Copyright (c) 2015年 donbe. All rights reserved.
//



#import <UIKit/UIKit.h>
#import "InputResponderProtocol.h"

@interface MyLabel : UILabel

@property(nonatomic,weak)UIResponder<InputResponderProtocol> *inputTextView;


@end
