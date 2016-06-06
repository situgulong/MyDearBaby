//
//  JQSearchBar.m
//  金秋weibo
//
//  Created by 影子恋人 on 16/5/5.
//  Copyright © 2016年 影子恋人. All rights reserved.
//

#import "JQSearchBar.h"

@implementation JQSearchBar


+(instancetype)searchBar;
{
    JQSearchBar *searchBar = [[JQSearchBar alloc]initWithFrame:CGRectMake(0, 0, 320, 35)];
    searchBar.background = [UIImage imageNamed:@"searchbar_textfield_background"];
    searchBar.font = [UIFont systemFontOfSize:15];
    UIImageView *searchImageView = [[UIImageView alloc]initWithFrame:CGRectMake(0, 0, 30, 30)];
    searchImageView.image = [UIImage imageNamed:@"searchbar_textfield_search_icon"];
    searchImageView.contentMode = UIViewContentModeCenter;
    searchBar.leftView = searchImageView;
    searchBar.leftViewMode = UITextFieldViewModeAlways;
    if (!searchBar.background) {
        NSLog(@"你没有倒入图片");
    }
    return searchBar;
    
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
