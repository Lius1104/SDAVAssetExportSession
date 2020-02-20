//
//  PHAsset+FixTargetSize.h
//  JJVideoManagerKit
//
//  Created by 刘爽 on 2020/2/19.
//  Copyright © 2020 JJ. All rights reserved.
//

#import <Photos/Photos.h>

NS_ASSUME_NONNULL_BEGIN

@interface PHAsset (FixTargetSize)

- (CGSize)fixTargetSize:(CGSize)targetSize;

@end

NS_ASSUME_NONNULL_END
