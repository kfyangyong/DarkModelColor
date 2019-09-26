//
//  ViewController.m
//  DarkModelColor
//
//  Created by 杨永 on 2019/9/26.
//  Copyright © 2019 com.ayong.myapp. All rights reserved.
//

#import "ViewController.h"
#import "ColorCell.h"

@interface ViewController ()<UITableViewDelegate,UITableViewDataSource>

@property (nonatomic, strong) UITableView *tableview;
@property (nonatomic, strong) NSArray *colors;

@property (nonatomic, strong) NSDictionary *Systemcolors;
@property (nonatomic, strong) NSDictionary *Foregroundcolors;
@property (nonatomic, strong) NSDictionary *Backgroundcolors;
@property (nonatomic, strong) NSDictionary *Fillcolors;
@property (nonatomic, strong) NSDictionary *Othercolors;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    [self.view addSubview:self.tableview];
    
    self.Systemcolors = @{@"systemRedColor":[UIColor systemRedColor],
                          @"systemGreenColor":[UIColor systemGreenColor],
                          @"systemBlueColor":[UIColor systemBlueColor],
                          @"systemOrangeColor":[UIColor systemOrangeColor],
                          @"systemYellowColor":[UIColor systemYellowColor],
                          @"systemPinkColor":[UIColor systemPinkColor],
                          @"systemPurpleColor":[UIColor systemPurpleColor],
                          @"systemTealColor":[UIColor systemTealColor],
                          @"systemIndigoColor":[UIColor systemIndigoColor],
     
                          @"systemGrayColor":[UIColor systemGrayColor],
                          @"systemGray2Color":[UIColor systemGray2Color],
                          @"systemGray3Color":[UIColor systemGray3Color],
                          @"systemGray4Color":[UIColor systemGray4Color],
                          @"systemGray5Color":[UIColor systemGray5Color],
                          @"systemGray6Color":[UIColor systemGray6Color]
    };
    
    self.Foregroundcolors = @{@"labelColor":[UIColor labelColor],
                              @"secondaryLabelColor":[UIColor secondaryLabelColor],
                              @"tertiaryLabelColor":[UIColor tertiaryLabelColor],
                              @"quaternaryLabelColor":[UIColor quaternaryLabelColor],
                              @"linkColor":[UIColor linkColor],
                              @"placeholderTextColor":[UIColor placeholderTextColor],
                              @"separatorColor":[UIColor separatorColor],
                              @"opaqueSeparatorColor":[UIColor opaqueSeparatorColor]
    };

    self.Backgroundcolors = @{@"systemBackgroundColor":[UIColor systemBackgroundColor],
                              @"secondarySystemBackgroundColor":[UIColor secondarySystemBackgroundColor],
                              @"tertiarySystemBackgroundColor":[UIColor tertiarySystemBackgroundColor],
                              @"systemGroupedBackgroundColor":[UIColor systemGroupedBackgroundColor],
                              @"secondarySystemGroupedBackgroundColor":[UIColor systemGroupedBackgroundColor],
                              @"tertiarySystemGroupedBackgroundColor":[UIColor systemGroupedBackgroundColor]
                              
    };
    
    self.Fillcolors = @{ @"systemFillColor":[UIColor systemFillColor],
                         @"secondarySystemFillColor":[UIColor secondarySystemFillColor],
                         @"tertiarySystemFillColor":[UIColor tertiarySystemFillColor],
                         @"quaternarySystemFillColor":[UIColor quaternarySystemFillColor]
                         
    };

    self.Othercolors = @{@"lightTextColor":[UIColor lightTextColor],
                         @"darkTextColor":[UIColor darkTextColor],
                         @"groupTableViewBackgroundColor":[UIColor systemGroupedBackgroundColor],
                         @"viewFlipsideBackgroundColor":[UIColor viewFlipsideBackgroundColor],
                         @"scrollViewTexturedBackgroundColor":[UIColor scrollViewTexturedBackgroundColor],
                         @"underPageBackgroundColor":[UIColor underPageBackgroundColor]
                         
    };
    self.colors = @[self.Systemcolors,self.Foregroundcolors,self.Backgroundcolors,self.Fillcolors,self.Othercolors];
    
    
}

- (UITableView *)tableview {
    if (!_tableview) {
        _tableview = [[UITableView alloc] initWithFrame:[UIScreen mainScreen].bounds style:UITableViewStyleGrouped];
        _tableview.delegate = self;
        _tableview.dataSource = self;
        [_tableview registerClass:[ColorCell class] forCellReuseIdentifier:@"cell"];
    }
    return _tableview;
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return self.colors.count;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return ((NSArray *)self.colors[section]).count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    ColorCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell" forIndexPath:indexPath];
    NSDictionary *colors = self.colors[indexPath.section];
    NSArray *names = [colors allKeys];
    NSArray *values = [colors allValues];
    cell.colorName = names[indexPath.row];
    cell.viewColor =  values[indexPath.row];
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    
}

- (UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section {
    UIView *header = [[UIView alloc] initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, 22)];
    header.backgroundColor = [UIColor yellowColor];
    return header;
}

- (UIView *)tableView:(UITableView *)tableView viewForFooterInSection:(NSInteger)section {
    return nil;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return 60;
}

- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section {
    return 22;
}

- (CGFloat)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section {
    return 0;
}


@end
