//
//  MeView.m
//  MJTable
//
//  Created by Mac on 2017/11/15.
//  Copyright © 2017年 Mac. All rights reserved.
//

#import "MeView.h"

#define imgHeight       400
#define ratio                  2
@interface MeView()<UITableViewDelegate,UITableViewDataSource>
@end
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
        m_headImageView = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"timg"]];
        m_headImageView.contentMode = UIViewContentModeScaleAspectFill;
    }
    return m_headImageView;
}

- (UITableView *)p_tableView
{
    if (!m_tableView) {
        m_tableView = [[UITableView alloc] initWithFrame:self.bounds];
        m_tableView.dataSource = self;
        m_tableView.delegate = self;
        m_tableView.rowHeight = 50;
    }
    return m_tableView;
}

-(void)layoutSubviews
{
    self.p_headImageView.frame = CGRectMake(0, -imgHeight, kMainScreen_Width, imgHeight);
    [self.p_tableView insertSubview:self.p_headImageView atIndex:0];
    self.p_tableView.contentInset = UIEdgeInsetsMake(imgHeight/2, 0, 0, 0);
    [self addSubview:self.p_tableView];
}

#pragma mark - UITableViewDataSource
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 30;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *reuseId = @"reuseId";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:reuseId];
    if (!cell) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:reuseId];;
    }
    cell.textLabel.text = [NSString stringWithFormat:@"MJJ%ld", indexPath.row];
    return cell;
}

-(void)scrollViewDidScroll:(UIScrollView *)scrollView
{
    CGFloat offsetY = scrollView.contentOffset.y + imgHeight / 2;
    if (offsetY > 0) {
        return;
    }
    NSLog(@"offsetY = %f", offsetY);
    CGFloat scale = -offsetY / kMainScreen_Height * ratio;
    self.p_headImageView.transform = CGAffineTransformMakeScale(1 + scale, 1 + scale);
}
/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
