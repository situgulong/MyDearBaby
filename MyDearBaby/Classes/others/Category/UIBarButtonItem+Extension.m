//
//  UIBarButtonItem+Extension.m
//  MyDearBaby
//
//  Created by 影子恋人 on 16/5/4.
//  Copyright © 2016年 影子恋人. All rights reserved.
//

#import "UIBarButtonItem+Extension.h"
#import "UIView+Extension.h"

@implementation UIBarButtonItem (Extension)

+(instancetype)itemWithImage:(NSString *)image highlightedImage:(NSString *)highlightedImage target:(id)target acttion:(SEL)action
{
    UIButton *btn = [[UIButton alloc]init];
    btn.size = [UIImage imageNamed:image].size;
    [btn setImage:[[UIImage imageNamed:image]imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal] forState:UIControlStateNormal];
    [btn setImage:[[UIImage imageNamed:highlightedImage] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal] forState:UIControlStateHighlighted];
    [btn addTarget:target action:action forControlEvents:UIControlEventTouchUpInside];
    UIBarButtonItem *item = [[UIBarButtonItem alloc]initWithCustomView:btn];
    return item;
}

@end
