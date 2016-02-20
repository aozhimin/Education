//
//  HomeTableViewCell.m
//  Education
//
//  Created by dev-aozhimin on 16/2/19.
//  Copyright © 2016年 com.aozhimin. All rights reserved.
//

#import "HomeTableViewCell.h"
#import "UIImageView+Extension.h"
#import "UIImageView+WebCache.h"

@implementation HomeTableViewCell

- (void)awakeFromNib {
    // Initialization code
    [self.avatarImageView addRoundCorner];
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

- (void)setModel:(VideoModel *)model {
    [self.videoPreviewImageView sd_setImageWithURL:[NSURL URLWithString:model.cover] placeholderImage:[UIImage imageNamed:@"logo"]];
    self.countLabel.text = [NSString stringWithFormat:@"观看：%ld.%ld万",model.playCount/10000,model.playCount/1000-model.playCount/10000];
    self.timeDurationLabel.text = [NSString stringWithFormat:@"时长：%@", [model.ptime substringWithRange:NSMakeRange(12, 4)]];
}

@end
