//
//  UIBarButtonItem+Extension.h
//  MyDearBaby
//
//  Created by 影子恋人 on 16/5/4.
//  Copyright © 2016年 影子恋人. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIBarButtonItem (Extension)

+(instancetype)itemWithImage:(NSString *)image highlightedImage:(NSString *)highlightedImage target:(id)target acttion:(SEL)action;
@end
