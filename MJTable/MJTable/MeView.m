//
//  MeView.m
//  MJTable
//
//  Created by Mac on 2017/11/15.
//  Copyright © 2017年 Mac. All rights reserved.
//

#import "MeView.h"

#define imgHeight       400
@implementation MeView
@synthesize p_tableView = m_tableView;
@synthesize p_headImageView = m_headImageView;

-(instancetype)init
{
    self = [super init];
    if (self) {
        
    }
    return self;
}

-(instancetype)initWithCoder:(NSCoder *)aDecoder
{
    self = [super initWithCoder:aDecoder];
    if (self) {
        
    }
    return self;
}

-(instancetype)initWithFrame:(CGRect)frame
{
    self =[super initWithFrame:frame];
    if (self) {
        
    }
    return self;
}
-(UIImageView*)p_headImageView
{
    if (!m_headImageView) {
        m_headImageView = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"time"]];
        m_headImageView.contentMode = UIViewContentModeScaleAspectFill;
    }
    return m_headImageView;
}

- (UITableView *)p_tableView
{
    if (!m_tableView) {
        m_tableView = [[UITableView alloc] initWithFrame:self.view.bounds];
        m_tableView.dataSource = self;
        m_tableView.delegate = self;
        m_tableView.rowHeight = 50;
    }
    return m_tableView;
}

-(void)layoutSubviews
{
    self.p_headImageView.frame = CGRectMake(0, -imgHeight, kMainScreen_Width, imgHeight);
}
/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
