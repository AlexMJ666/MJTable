//
//  MeView.h
//  MJTable
//
//  Created by Mac on 2017/11/15.
//  Copyright © 2017年 Mac. All rights reserved.
//

#import <UIKit/UIKit.h>

#define kMainScreen_Height [UIScreen mainScreen].bounds.size.height
#define kMainScreen_Width [UIScreen mainScreen].bounds.size.width

@interface MeView : UIView
{
    UIImageView* m_headImageView;
    UITableView* m_tableView;
}
@property(nonatomic,strong) UIImageView* p_headImageView;
@property(nonatomic,strong) UITableView* p_tableView;
@end
