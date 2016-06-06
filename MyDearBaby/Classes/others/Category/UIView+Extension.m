//
//  UIView+Extension.m
//  MyDearBaby
//
//  Created by 影子恋人 on 16/5/5.
//  Copyright © 2016年 影子恋人. All rights reserved.
//

#import "UIView+Extension.h"

@implementation UIView (Extension)

-(void)setSize:(CGSize)size
{
    self.frame = CGRectMake(0, 0, size.width, size.height);
}

-(CGSize)size
{
    return self.frame.size;
}

@end
