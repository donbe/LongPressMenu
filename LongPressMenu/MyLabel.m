//
//  MyLabel.m
//  LongPressMenu
//
//  Created by renhe on 15/1/22.
//  Copyright (c) 2015年 donbe. All rights reserved.
//

#import "MyLabel.h"

@implementation MyLabel

-(instancetype)initWithFrame:(CGRect)frame{
    self = [super initWithFrame:frame];
    if (self) {
        self.userInteractionEnabled = YES;
        
        UILongPressGestureRecognizer *longPressGr = [[UILongPressGestureRecognizer alloc] initWithTarget:self action:@selector(longPressed:)];
        [self addGestureRecognizer:longPressGr];
    }
    return self;
}

- (BOOL)canBecomeFirstResponder {
    return YES;
}

- (BOOL)canPerformAction:(SEL)action withSender:(id)sender {
    if (action == @selector(copy:)) {
        return YES;
    }
    
    return [super canPerformAction:action withSender:sender];
}

- (void)copy:(id)sender {
    [UIPasteboard generalPasteboard].string = self.text;
}

- (void)longPressed:(UILongPressGestureRecognizer *)gr {
    
    if (gr.state == UIGestureRecognizerStateBegan) {
        if ([self.inputTextView isFirstResponder]) {
            self.inputTextView.inputNextResponder = self;
            [[NSNotificationCenter defaultCenter] addObserver:self
                                                     selector:@selector(menuDidHide:)
                                                         name:@"UIMenuControllerDidHideMenuNotification" object:nil];
        }else{
            [self becomeFirstResponder];
        }
        
        UIMenuController *menuCtrl = [UIMenuController sharedMenuController];
        
        [menuCtrl setTargetRect:gr.view.bounds inView:self];
        [menuCtrl setMenuVisible:YES animated:YES];
    }
    
}

- (void)menuDidHide:(NSNotification*)notification {
    self.inputTextView.inputNextResponder = nil;
    [[NSNotificationCenter defaultCenter] removeObserver:self
                                                    name:@"UIMenuControllerDidHideMenuNotification" object:nil];
}
@end
