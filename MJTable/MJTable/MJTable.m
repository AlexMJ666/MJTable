//
//  MJTable.m
//  MJTable
//
//  Created by Mac on 2017/11/15.
//  Copyright © 2017年 Mac. All rights reserved.
//

#import "MJTable.h"



@interface MJTable ()<UITableViewDelegate,UITableViewDataSource>

@end
@implementation MJTable

-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 44;
}

-(UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString* celled =@"MJCell";
    UITableViewCell* cell = [tableView dequeueReusableCellWithIdentifier:celled];
    if (!cell) {
        cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleValue1 reuseIdentifier:celled];
    }
    return cell;
}

- (NSInteger)tableView:(nonnull UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 10;
}

-(CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section
{
    return 100;
}

-(UIView*)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section
{
    if (section == 0) {
        return [self setHeadView];
    }
    return nil;
    
}

-(UIView*)setHeadView
{
    UIImageView* headView = [[UIImageView alloc]initWithFrame:CGRectMake(0, -100, kMainScreen_Width, kMainScreen_Height)];
    headView.image = [UIImage imageNamed:@"timg"];
    return headView;
    
}
@end
