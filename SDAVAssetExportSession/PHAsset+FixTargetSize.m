//
//  PHAsset+FixTargetSize.m
//  JJVideoManagerKit
//
//  Created by 刘爽 on 2020/2/19.
//  Copyright © 2020 JJ. All rights reserved.
//

#import "PHAsset+FixTargetSize.h"


@implementation PHAsset (FixTargetSize)

- (CGSize)fixTargetSize:(CGSize)targetSize {
    CGSize resultSize = CGSizeMake(self.pixelWidth, self.pixelHeight);
    //尺寸过大才压缩，否则不更改targetSize
    if (resultSize.width * resultSize.height > targetSize.width * targetSize.height) {
        int width = 0,height = 0;
        if (resultSize.width > resultSize.height) {
            width = targetSize.width;
            height = targetSize.width * resultSize.height/resultSize.width;
        }else {
            width = targetSize.height;
            height = targetSize.height * resultSize.height/resultSize.width;
        }
        resultSize = CGSizeMake(width, height);
    } else if (resultSize.width == 0 || resultSize.height == 0) {//异常情况处理
        resultSize = CGSizeMake(targetSize.height, targetSize.width);
    } else {
        // phasset 本身小于目标尺寸，则不进行处理
    }
    return resultSize;
}

@end
