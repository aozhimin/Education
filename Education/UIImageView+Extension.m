//
//  UIImageView+Extension.m
//  Education
//
//  Created by dev-aozhimin on 16/2/19.
//  Copyright © 2016年 com.aozhimin. All rights reserved.
//

#import "UIImageView+Extension.h"

@implementation UIImageView (Extension)

- (void)addRoundCorner {
    CAShapeLayer *aCircle = [CAShapeLayer layer];
    aCircle.path = [UIBezierPath bezierPathWithRoundedRect:self.bounds cornerRadius:self.frame.size.height / 2].CGPath;
    aCircle.fillColor = [UIColor blackColor].CGColor;
    self.layer.mask = aCircle;
}

@end
