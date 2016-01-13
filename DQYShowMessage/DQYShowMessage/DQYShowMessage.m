//
//  DQYShowMessage.m
//  DQYShowMessage
//
//  Created by mac on 16/1/13.
//  Copyright © 2016年 dqy. All rights reserved.
//

#import "DQYShowMessage.h"



@implementation DQYShowMessage





- (void)showMessageInWindow:(NSString *)message {
    
    //get a window
    UIWindow * window = [UIApplication sharedApplication].keyWindow;
    
    // create a container
    UIView * container = [[UIView alloc] init];
    container.backgroundColor = [UIColor blackColor];
    
    container.layer.masksToBounds = YES;
    container.layer.cornerRadius = 10;
    
    [window addSubview:container];
    
    
    // compute message's bounds
    CGSize messageSize = [message boundingRectWithSize:CGSizeMake(MAXFLOAT, MAXFLOAT) options:NSStringDrawingUsesLineFragmentOrigin attributes:@{NSFontAttributeName:[UIFont systemFontOfSize:14]} context:nil].size;
    
    //create a message label
    UILabel * messageLabel = [[UILabel alloc] initWithFrame:CGRectMake(5, 5, messageSize.width, messageSize.height)];
    messageLabel.text = message;
    messageLabel.textColor = [UIColor whiteColor];
    messageLabel.textAlignment = NSTextAlignmentCenter;
    messageLabel.font = [UIFont systemFontOfSize:13];
    
    [container addSubview:messageLabel];
    
    // set container frame
    container.frame = CGRectMake(([[UIScreen mainScreen] bounds].size.width - messageSize.width - 10) / 2, [[UIScreen mainScreen] bounds].size.height - 100, messageSize.width + 10, messageSize.height + 10);
    

    // block animation
    
    [UIView animateWithDuration:1.0f animations:^{
        
        container.alpha = 0;
        
        container.center = CGPointMake(container.center.x, container.center.y - 80);
        
        
        
    } completion:^(BOOL finished) {
        
        
        
    }];
    

    
    
    
    
    
    
    
    
    
    
}
@end
