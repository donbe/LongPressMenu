//
//  InputResponderProtocol.h
//  LongPressMenu
//
//  Created by renhe on 15/1/22.
//  Copyright (c) 2015年 donbe. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <Foundation/Foundation.h>

#ifndef LongPressMenu_InputResponderProtocol_h
#define LongPressMenu_InputResponderProtocol_h

@protocol InputResponderProtocol <NSObject>

@property (nonatomic, weak) UIResponder *inputNextResponder; 

@end

#endif
