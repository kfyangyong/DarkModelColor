//
//  ColorCell.m
//  DarkModelColor
//
//  Created by 杨永 on 2019/9/26.
//  Copyright © 2019 com.ayong.myapp. All rights reserved.
//

#import "ColorCell.h"

@interface ColorCell()

@property (nonatomic, strong) UILabel *titleLab;
@property (nonatomic, strong) UIView *colorView;
@property (nonatomic, strong) UILabel *messageLab;

@end
@implementation ColorCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        CGFloat screenW = [UIScreen mainScreen].bounds.size.width;

        self.titleLab = [[UILabel alloc] initWithFrame:CGRectMake(10, 0, 250, 20)];
        self.titleLab.backgroundColor = [UIColor whiteColor];
        self.titleLab.textColor = [UIColor blackColor];
        self.titleLab.font = [UIFont systemFontOfSize:12];
        [self.contentView addSubview:self.titleLab];
        
        self.messageLab = [[UILabel alloc] initWithFrame:CGRectMake(0, 20, 260, 40)];
        self.messageLab.textAlignment = NSTextAlignmentRight;
        self.messageLab.font = [UIFont systemFontOfSize:18];
       [self.contentView addSubview:self.messageLab];
        self.colorView = [[UIView alloc] initWithFrame:CGRectMake(260, 0, screenW - 260, 60)];
       [self.contentView addSubview:self.colorView];
        self.selectionStyle = UITableViewCellSelectionStyleNone;
    }
    return self;
}

- (void)setColorName:(NSString *)colorName {
    _colorName = colorName;
    self.titleLab.text = colorName;
    self.messageLab.text = @"样例文字 样例文字";
}

- (void)setViewColor:(UIColor *)viewColor {
    _viewColor = viewColor;
    self.messageLab.textColor = viewColor;
    self.colorView.backgroundColor  = viewColor;
}

@end
