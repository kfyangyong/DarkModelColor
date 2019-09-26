//
//  ColorCell.h
//  DarkModelColor
//
//  Created by 杨永 on 2019/9/26.
//  Copyright © 2019 com.ayong.myapp. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface ColorCell : UITableViewCell

@property (nonatomic, copy) NSString *colorName;

@property (nonatomic, strong) UIColor *viewColor;

@end

NS_ASSUME_NONNULL_END
